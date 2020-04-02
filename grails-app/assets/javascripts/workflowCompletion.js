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
    myInverval = window.setInterval(checkIfWf1Done, 1000);
}else if(2==num){
    console.log("TWO HERE")
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
    wf2SetUp() //Don't think this is properly putting stuff in cart
    if(sessionStorage.getItem("cart")==null){
        document.getElementById('placeHolderBack').style.visibility = "visible"
        sessionStorage.removeItem("cart")
        window.clearInterval(myInverval);

    }
}

function wf2SetUp(){
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
}
