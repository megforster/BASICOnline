const cartListName = "cartList"   // Name of field to store a list of items to add.
const cartCommand = "cartCommand" // Item to set to identify a "command"
const commandSetCart = "setCart"  // Value of one command  (this should clear and set cart in one swoop)
var tempCart = []
var saveCart = []

// This starts the script going.
//   I like this idea better than running immediately.  Can run it once entire page is loaded.
function runCart() {
    if (document.readyState == "loading") {
        document.documentURI = sessionStorage.getItem("URI")
        if (document.readyState == "loading") {
            document.addEventListener("DOMContentLoaded", ready)
        }
    } else {
        ready()
    }
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
            console.log("DEBUG: URI = " + sessionStorage.getItem("URI"))
            if(sessionStorage.getItem("URI")=="http://localhost:63342/WorkingCopy/OnlineStore/Views/ShoppingCart.html") { //Tells if shopping cart icon was clicked
                console.log('loadingCart becuase shopping cart icon')
                loadCart()
            }else if (sessionStorage.getItem(cartCommand) === undefined || sessionStorage.getItem(cartCommand) === null) {
                console.log("adding Item to Cart")
                addToCartClicked()
            } else {
                switch (sessionStorage.getItem(cartCommand)) {
                    case commandSetCart:
                        // Set the cart directly (clear and add items from list)
                        console.log("DEBUG: Cart command: Set Cart")
                        clearCart()
                        addMultipleItemsToCart()
                        break;
                    default:
                        console.log("Error.  Unrecognized command sent: " + sessionStorage.getItem(cartCommand))
                }
                // Clear the cartCommand (or we'll have a problem next load if it isn't set!)
                sessionStorage.removeItem(cartCommand)
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

// Clear the cart
function clearCart() {
    let cartItems = document.getElementsByClassName("cart-items")[0]
    if (cartItems !== undefined) {
        console.log("DEBUG: Clearing all items from shopping cart document")
        while (cartItems.hasChildNodes()) {
            cartItems.removeChild(cartItems.firstChild)
        }
    }
    sessionStorage.removeItem("cart")
    updateCartTotal()
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

function quantityChanged(event) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1
    }

    updateCartTotal()

}

// This function is invoked if the session was sent a LIST of items
// rather than a single item.  This usually can happen with an automated call
// or if a multi-item button were pressed
function addMultipleItemsToCart() {
    loadCart()
    let cartList = JSON.parse(sessionStorage.getItem(cartListName))
    console.log("DEBUG: Adding " + cartList.length + " items to the cart.")
    cartList.forEach(item => {
        console.log("Adding: " + item.title + " Price: " + item.price)
        addItemToCart(item.title, item.price, item.imageSrc)
    })
    updateCartTotal()

    // This URI is used (for whatever reason) to indicate no action is needed.
    //    Usually tripped when shopping cart itself is loaded
    sessionStorage.setItem("URI", "http://localhost:63342/WorkingCopy/OnlineStore/Views/ShoppingCart.html")
}

function addToCartClicked(event) {
    var title = sessionStorage.getItem("title")
    var price = sessionStorage.getItem("price")
    Number(price)
    var imageSrc = sessionStorage.getItem("image")
    loadCart()
    addItemToCart(title, price, imageSrc)
    updateCartTotal()
}

function loadCart(){
    if(sessionStorage.getItem("cart")!=null) {
        var cartItems = document.getElementsByClassName("cart-items")[0]
        //console.log("HERE")
        saveCart = JSON.parse(sessionStorage.getItem("cart"))
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

function addItemToCart(title, price, imageSrc) {
    console.log("DEBUG: addItemToCart: " + title + " Price: $" + price)
    var cartRow = document.createElement('div')
    cartRow.classList.add("cart-row")
    var cartItems = document.getElementsByClassName("cart-items")[0]
    var cartItemNames = cartItems.getElementsByClassName("cart-item-title")

    //This doesn't work whoops
    for(var i = 0; i<cartItemNames.length;i++){
        if(cartItemNames[i].innerText==title){
            alert("This item is already in your cart")
            return
        }
    }
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
    let cartItemContainer = document.getElementsByClassName("cart-items")[0]
    let cartRows = cartItemContainer === undefined ? [] : cartItemContainer.getElementsByClassName("cart-row")
    let total = 0
    for (let i = 0; i < cartRows.length; i++) {
        let cartRow = cartRows[i];
        let priceElement = cartRow.getElementsByClassName("cart-price")[0];
        let quantityElement = cartRow.getElementsByClassName("cart-quantity-input")[0];
        let price = parseFloat(priceElement.innerText.replace("$", ""));
        let quantity = quantityElement.value;
        total = total + (price * quantity)
    }
    total = (Math.round(total * 100) / 100).toFixed(2)
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
}

