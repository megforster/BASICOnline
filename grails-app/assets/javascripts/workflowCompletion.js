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
    sessionStorage.removeItem("cart")
    myInverval = window.setInterval(checkIfWf1Done, 1000);
}else if(2==num){
    console.log("TWO HERE")
    sessionStorage.removeItem("cart")
    wf2SetUp()
    myInverval = window.setInterval(checkIfWf2Done, 1000);
}else{
    console.log("Both failed")
}

function checkIfWf1Done() {
    //console.log("The length of 'cart' is now: "+sessionStorage.getItem("cart").length)//its 2??
    //console.log(sessionStorage.getItem("cart"))//just shows [] after removing only item in cart
    if(sessionStorage.getItem("cart")!=null){
        if(sessionStorage.getItem("cart").length>2){
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style .visibility = "visible"
            window.clearInterval(myInverval);
        }
    }
}

//Doesn't work with addItemToCart included?
function checkIfWf2Done(){
    if(sessionStorage.getItem("cart")!=null) {
        if (sessionStorage.getItem("cart").length <3) {
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style.visibility = "visible"
            sessionStorage.removeItem("cart")
            window.clearInterval(myInverval);

        }
    }
}

//adding another item to cart ofter overwrites this item
function wf2SetUp(){
    console.log("Going to add first item")
    sessionStorage.setItem("image", "../assets/StockImages/bathAll.jpeg")
    sessionStorage.setItem("title", "Magnolia Bath AccessorySet")
    sessionStorage.setItem("price", "$92.78")
    sessionStorage.setItem("URI", "http://localhost:8080/basicOnlineStore/Bath")
    //addToCartClicked()
    //Doesn't get this far w. addToCartClicked
    console.log("Added first item, going to add second")
    sessionStorage.setItem("image", "../assets/StockImages/KidsGraphicTees/Tee2Front.jpeg")
    sessionStorage.setItem("title", "Looney Tunes Tweety Graphic Tee")
    sessionStorage.setItem("price", "$40.00")
    sessionStorage.setItem("URI", "http://localhost:8080/basicOnlineStore/KidsGraphicTees")
    //addToCartClicked()
    console.log("Added second item")
}
