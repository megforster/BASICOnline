const cartName = "cart2";
var tempCart=[]
var saveCart = []

function runCart() {
    if (document.readyState == "loading") {
        document.documentURI = sessionStorage.getItem("URI")
        if (document.readyState == "loading") {
            document.addEventListener("DOMContentLoaded", ready)
        }
    } else {
        ready()
    }
    showCart2()
}

// Called by a shopping page to add an item from the list to the cart
function passValues2() {
    let imageSrc = document.getElementsByClassName("shop-item-image")[0].src
    let productTitle = document.getElementsByClassName("shop-item-title")[0].innerText
    let productPrice = document.getElementsByClassName("shop-item-price")[0].innerText
    addItemToCart2(productTitle, productPrice, imageSrc, 1)
}

// Add the given item and quantity to the cart.
// If the item already exists, increase the quantity by the given amount  (UNIMPLEMENTED RIGHT NOW)
function addItemToCart2(title, price, imageSrc, quantity) {
    if (quantity === undefined) quantity = 1

    console.log("DEBUG: In addItemToCart")

    // Load the cart and add the new item to the cart and store it back in
    let cart = loadCart2()
    if (typeof price === 'string') {
        console.log("DEBUG:  Pre-Price = " + price)
        price = Number(parseFloat(price.replace("$", "")))
        console.log("DEBUG:  Post-price = " + price)
    }
    cart.push({title:title, price:price, imageSrc:imageSrc, quantity:quantity})
    sessionStorage.setItem(cartName, JSON.stringify(cart))
}

// Grab the cart from the SessionStorage and return as a list of items in a cart
function loadCart2() {
    let items = sessionStorage.getItem(cartName)   // Get cart as a JSON file (if present)
    if (items != null) {
        let cart = JSON.parse(items)   // Parse the items from the cart
        return cart
    } else {
        return []   // Empty cart
    }
}

// Empty the cart out completely
function emptyCart2() {
    sessionStorage.removeItem(cartName)
}

// Take the contents of the cart and generate a view of it on the given document
function displayCart2(theDocument) {
    if (theDocument == undefined) theDocument = document

    // For now, it is just going to load the cart contents and dump them to console.log
    let cart = loadCart2()

    console.log("DEBUG: Displaying contents of cart...")
    cart.forEach(item => console.log("Title: " + item.title + " Price:" + item.price +"Quantity:"+item.quantity))

    // Create a visual display of each cart item
    let cartItems = theDocument.getElementsByClassName("cart-items")[0]
    for (let i = 0; i < cart.length; i++) {
        // Create the div row to hold the details of this item
        let cartRow = theDocument.createElement('div')
        cartRow.classList.add("cart-row")
        let item = cart[i]
        let imageSrc = item.imageSrc
        let title = item.title
        let price = item.price
        let quantity = item.quantity

        let cartRowContents = `
        <div class="cart-item cart-column">
            <img class="cart-item-image" src="${imageSrc}" width="100" height="100">
            <span class="cart-item-title">${title}</span>
        </div>
        <span class="cart-price cart-column">${price}</span>
        <div class="cart-quantity cart-column">
            <input class="cart-quantity-input" type="number" value="${quantity}">
            <button class=" btn-danger" type="button">Remove</button>
        </div>`
        cartRow.innerHTML = cartRowContents
        cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click',
            (event) => removeCartItem2(event, title))
        cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', (event) => quantityChanged(event, title))
        cartItems.append(cartRow)
    }


}

//Changes quantity visual
function quantityChanged(event, title) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1
    }
    updateCartTotal()
    let cart = loadCart2()
    //console.log(cart[0])
    for(let i = 0; i<cart.length;i++){
        var itemTitle = cart[i].title
        //console.log("title: "+title)
        //console.log("itemTitle: "+itemTitle)
        //console.log(typeof itemTitle)
        if (itemTitle.localeCompare(title)==0){
            //console.log("They be equal!!")
            cart[i].quantity = input.value
            //console.log("Updated item qauntity: "+cart[i].quantity)
            removeCartItem2(event, title)
            addItemToCart2(title, cart[i].price, cart[i].imageSrc, cart[i].quantity)
            displayCart2()
        }
    }
    //console.log(loadCart2())
}

function updateCartTotal2() {
    let total = 0
    let cart = loadCart2()
    cart.forEach(item => total += item.price * item.quantity)
    total = (Math.round(total * 100) / 100).toFixed(2)
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
}

//Seems to work may need further testing
//   Event: The event that triggered the action
//   title: Is the title of the item to remove
function removeCartItem2(event, title) {
    let buttonClicked = event.target
    let cart = loadCart2()
    cart = cart.filter(item => item.title !== title)
    sessionStorage.setItem(cartName, JSON.stringify(cart))

    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal2()  // Currently, not displaying cart total
}

/*
Known Issues In Priority Order
- Cart doesnt save amount of an item so reloading defaults to 1
- Doesn't detect when an item is already in the cart
 */


function ready() {
    var removeCartItemButtons = document.getElementsByClassName("btn-danger")
    for (var i = 0; i < removeCartItemButtons.length; i++) {
        var button = removeCartItemButtons[i]
        button.addEventListener('click', removeCartItem)
    }
    var quantityInputs = document.getElementsByClassName("cart-quantity-input")
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i]
        input.addEventListener("change", quantityChanged)
    }

    //add item after button click but before navigation
    if(sessionStorage.length>0){
        if(performance.navigation.type==1){ //so refreshing the page doesn't add another item
            console.log("loadingCart becuase of refresh")
            loadCart()
        }else{
            if(sessionStorage.getItem("URI")=="http://localhost:63342/WorkingCopy/OnlineStore/Views/ShoppingCart.html"){ //Tells if shopping cart icon was clicked
                console.log('loadingCart becuase shopping cart icon')
                loadCart()
            }else{
                console.log("adding Item to Cart")
                addToCartClicked()
            }
        }
    }

    document.getElementsByClassName("btn-purchase")[0].addEventListener('click', purchaseClicked)
}

//Seems to work may need further testing
function removeCartItem(event) {
    var buttonClicked = event.target
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
    console.log("BEFORE\n"+saveCart)
    for(var i = 0; i<saveCart.length;i++){

        if(JSON.stringify(buttonClicked.parentElement.parentElement.innerHTML)==JSON.stringify(saveCart[i])){
            //console.log("Found identical item, so splice is incorrect if this does not work")
            saveCart.splice(i,1)
        }
    }
    console.log("AFTER\n"+saveCart)
    sessionStorage.setItem("cart", JSON.stringify(saveCart))


}


function purchaseClicked(){
    console.log("Purchase button was clicked")
    if(JSON.parse(sessionStorage.getItem("cart")).length>0){
        alert("Thank you for your purchase!")
        var cartItems = document.getElementsByClassName("cart-items")[0]
        while(cartItems.hasChildNodes()){
            cartItems.removeChild(cartItems.firstChild)
        }
        updateCartTotal()
        sessionStorage.removeItem("cart")
    }else{
        alert("You don't have anything in the cart to purchase!")
    }

}



function addToCartClicked(event) {
    var title = sessionStorage.getItem("title")
    var price = sessionStorage.getItem("price")
    Number(price)
    var imageSrc = sessionStorage.getItem("image")
    addItemToCart(title, price, imageSrc)
    updateCartTotal()
}


function loadCart(){
    if(sessionStorage.getItem("cart")!=null) {
        var cartItems = document.getElementsByClassName("cart-items")[0]
        //console.log("HERE")
        var temp = JSON.parse(sessionStorage.getItem("cart"))
        for (var i = 0; i < temp.length; i++) {
            saveCart[i] = temp[i]
        }
        if(sessionStorage.getItem("cart")!=null){
            tempCart = JSON.parse(sessionStorage.getItem("cart"))
            for(var i = 0; i<tempCart.length; i++){
                var cartRow2 = document.createElement('div')
                cartRow2.classList.add("cart-row")
                cartRow2.innerHTML = tempCart[i]
                cartItems.append(cartRow2)
                cartRow2.getElementsByClassName('btn-danger')[0].addEventListener('click', removeCartItem)
                cartRow2.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged)
            }
        }
        updateCartTotal()
    }
}

function addItemToCart(title, price, imageSrc, theDocument) {
    if (theDocument == undefined) theDocument = document   // Use the current document if not passed

    console.log("addItemToCart")
    var cartRow = theDocument.createElement('div')
    cartRow.classList.add("cart-row")
    var cartItems = theDocument.getElementsByClassName("cart-items")[0]
    var cartItemNames = cartItems.getElementsByClassName("cart-item-title")

    //This doesn't work whoops
    for(var i = 0; i<cartItemNames.length;i++){
        if(cartItemNames[i].innerText==title){
            alert("This item is already in your cart")
            return
        }
    }
    loadCart()
    var cartRowContents = `
        <div class="cart-item cart-column">
            <img class="cart-item-image" src="${imageSrc}" width="100" height="100">
            <span class="cart-item-title">${title}</span>
        </div>
        <span class="cart-price cart-column">${price}</span>
        <div class="cart-quantity cart-column">
            <input class="cart-quantity-input" type="number" value="1">
            <button class=" btn-danger" type="button">Remove</button>
        </div>`
    cartRow.innerHTML = cartRowContents
    cartItems.append(cartRow)
    cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', removeCartItem)
    cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged)

    saveCart.push(cartRowContents)

    sessionStorage.setItem("cart", JSON.stringify(saveCart))

    sessionStorage.setItem("URI", "http://localhost:63342/WorkingCopy/OnlineStore/Views/ShoppingCart.html")
}

function updateCartTotal() {
    var cartItemContainer = document.getElementsByClassName("cart-items")[0]
    var cartRows = cartItemContainer.getElementsByClassName("cart-row")
    var total = 0
    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i]
        var priceElement = cartRow.getElementsByClassName("cart-price")[0]
        var quantityElement = cartRow.getElementsByClassName("cart-quantity-input")[0]
        var price = parseFloat(priceElement.innerText.replace("$", ""))
        var quantity = quantityElement.value
        total = total + (price * quantity)
    }
    total = (Math.round(total * 100) / 100).toFixed(2)
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
}