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
        window.clearInterval(myInverval);
    }
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
        emptyCart2()
        addItemToCart2("Love Graphic Tee", 10, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
        addItemToCart2("Love Graphic Tee B", 15, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
}
