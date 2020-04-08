let whichwf = document.getElementById("wf").innerText
console.log(typeof whichwf)
console.log("whichwf: "+whichwf)
let half = whichwf.split('#') [1]
console.log(typeof half)
console.log("half: "+half)
let num = half.split(":")[0]
console.log(typeof num)
console.log("num: "+num)
let myInverval;

if(1==num){
    console.log("ONE HERE")
    wf1SetUp() // Just clear the cart to be safe...
    myInverval = window.setInterval(checkIfWf1Done, 1000);
}else if(2==num){
    console.log("TWO HERE")
    wf2SetUp() //Don't think this is properly putting stuff in cart
    myInverval = window.setInterval(checkIfWf2Done, 1000);
}else{
    console.log("Both failed")
}

function checkIfWf1Done() {
    if(sessionStorage.getItem("cart")!=null){
        if(sessionStorage.getItem("cart").length>2){
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style .visibility = "visible"
            sessionStorage.removeItem("cart")
            window.clearInterval(myInverval);
        }
    }
}

function checkIfWf2Done(){
    if(sessionStorage.getItem("cart")==null){
        document.getElementById('placeHolderBack').style.visibility = "visible"
        sessionStorage.removeItem("cart")
        window.clearInterval(myInverval);

    }
}

// Push the cart List  onto the Shopping Cart Page
//   This requires loading the shopping cart page and then once loaded
//   returning back to the returnPage
function pushCartList(cartList, uri, returnPage) {
    console.log("DEBUG: Pushing " + cartList.length + " items from cartList.")
    // Prepare to send the cart list over to the shopping cart page
    sessionStorage.setItem(cartCommand, commandSetCart)
    sessionStorage.setItem(cartListName, JSON.stringify(cartList))
    sessionStorage.setItem("URI", uri)

    // And... load the shopping cart
    let iframe = document.getElementById("storeID")
    if (iframe == undefined) {
        console.log("DEBUG: ERROR!  There doesn't appear to be a frame to the online store!")
    } else {
        let f = function() {
            console.log("Hey the page loaded!!!!")
            iframe.removeEventListener("load", f)  // Clear the listener (so doesn't happen again!)
            iframe.src = returnPage   // Return to the page
        }

        iframe.addEventListener("load", f)
        iframe.src = "/basicOnlineStore/shoppingCart"
        // // Now we need to wait until the shopping cart page is loaded
        // let iframeDoc = iframe.contentDocument || iframe.contentWindow.document;
        // let myInterval = window.setInterval(() => {
        //     if (iframeDoc.readyState !== "loading") {
        //         // It is ready - clear the interval
        //         console.log("DEBUG: Shopping cart page has finished loading, or it should have.")
        //         window.clearInterval(myInterval)
        //     }
        // }, 1000)
    }
}

function wf1SetUp() {
    let cartList = []
    pushCartList(cartList, "Not sure about URI used here...", "/basicOnlineStore/renderFinalView")

    // // And put the page back to the main landing page
    // let frame = document.getElementById("storeID")
    // if (frame == undefined) {
    //     console.log("DEBUG: There doesn't appear to be a frame to the online store!")
    // } else {
    //     frame.src = "/basicOnlineStore/renderFinalView"
    // }

}

function wf2SetUp(){
    if (false) {
        // I just didn't want to delete this since you were working on it...
        sessionStorage.setItem("cart", "<div class=\"cart-item cart-column\">\n" +
            "            <img class=\"cart-item-image\" src=\"http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg\" width=\"100\" height=\"100\">\n" +
            "            <span class=\"cart-item-title\">Epic Threads Love Graphic Tee</span>\n" +
            "        </div>\n" +
            "        <span class=\"cart-price cart-column\">$10.00</span>\n" +
            "        <div class=\"cart-quantity cart-column\">\n" +
            "            <input class=\"cart-quantity-input\" type=\"number\" value=\"1\">\n" +
            "            <button class=\" btn-danger\" type=\"button\">Remove</button>\n" +
            "        </div>,\n" +
            "        <div class=\"cart-item cart-column\">\n" +
            "            <img class=\"cart-item-image\" src=\"http://localhost:8080/assets/StockImages/side.jpg\" width=\"100\" height=\"100\">\n" +
            "            <span class=\"cart-item-title\">Kid's Converse Black</span>\n" +
            "        </div>\n" +
            "        <span class=\"cart-price cart-column\">$50.45</span>\n" +
            "        <div class=\"cart-quantity cart-column\">\n" +
            "            <input class=\"cart-quantity-input\" type=\"number\" value=\"1\">\n" +
            "            <button class=\" btn-danger\" type=\"button\">Remove</button>\n" +
            "        </div>")
    } else {
        // Set up to pass the items to the shopping cart
        let cartList = []
        cartList.push({title:"Sports Bra A", price:20, imageSrc:"/assets/StockImages/WomensActiveWear/SportsBra1Front.jpeg"})
        cartList.push({title:"Kids Tee Shirt B", price:20, imageSrc:"/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg"})
        cartList.push({title:"Fancy Leggings C", price:100, imageSrc:"http://localhost:8080/assets/StockImages/leggings1.jpg"})
        pushCartList(cartList, "Not sure about URI used here...", "/basicOnlineStore/renderFinalView")

        // And put the page back to the main landing page
        // let frame = document.getElementById("storeID")
        // if (frame == undefined) {
        //      console.log("DEBUG: There doesn't appear to be a frame to the online store!")
        // } else {
        //      frame.src = "/basicOnlineStore/renderFinalView"
        // }
    }
}
