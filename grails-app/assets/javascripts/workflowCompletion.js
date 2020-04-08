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
    wf1Setup()
    myInverval = window.setInterval(checkIfWf1Done, 1000);
}else if(2==num){
    console.log("TWO HERE")
    wf2SetUp() //Don't think this is properly putting stuff in cart
    myInverval = window.setInterval(checkIfWf2Done, 1000);
}else{
    console.log("Both failed")
}

function checkIfWf1Done() {
    cart = loadCart2()
    if (cart != null && cart.length > 0) {
                alert("Great Job! You Completed the Activity!")
                document.getElementById('placeHolderBack').style .visibility = "visible"
                emptyCart2()
                window.clearInterval(myInverval);
    }
    // if(sessionStorage.getItem("cart")!=null){
    //     if(sessionStorage.getItem("cart").length>2){
    //         alert("Great Job! You Completed the Activity!")
    //         document.getElementById('placeHolderBack').style .visibility = "visible"
    //         sessionStorage.removeItem("cart")
    //         window.clearInterval(myInverval);
    //     }
    // }
}

function checkIfWf2Done(){
    cart = loadCart2()
    if (cart == null || cart.length == 0) {
        alert("Great Job! You Completed the Activity!")
        document.getElementById('placeHolderBack').style.visibility = "visible"
        emptyCart2()
        window.clearInterval(myInverval);
    }
}

function wf1Setup() {
    emptyCart2()
}

function wf2SetUp(){
    if (false) {
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
        // var x = document.getElementById("myframe");
        // var y = (x.contentWindow || x.contentDocument);
        // if (y.document)y = y.document;
        // y.body.style.backgroundColor = "red";
        // var frame = document.getElementById("onlinestorexyz") // NOTE: SHOULD NOT USE A HARD_CODE NAME!!!
        // console.log("Document is " + document)
        /*console.log("Document URI is " + document.documentURI)
        console.log("Frame is " + frame)
        var frameDocument = (frame.contentWindow || frame.contentDocument)
        console.log("FrameDoc URI is " + frameDocument.documentURI)
        if (frameDocument.document) frameDocument = frameDocument.document
        console.log("FrameDoc URI is " + frameDocument.documentURI)
        addItemToCart("Love Graphic Tee", 10, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg", frameDocument)
                    */
        // Empty the cart and add the initial items
        emptyCart2()
        addItemToCart2("Love Graphic Tee", 10, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
        addItemToCart2("Love Graphic Tee B", 15, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
    }
}
