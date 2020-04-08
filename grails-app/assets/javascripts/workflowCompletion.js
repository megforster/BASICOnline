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
    wf2SetUp()
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
    if(sessionStorage.getItem("cart")!=null) {
        if (sessionStorage.getItem("cart").length < 3) {
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style.visibility = "visible"
            sessionStorage.removeItem("cart")
            window.clearInterval(myInverval);

        }
    }
}

//Including add to cart clicked adds teh bath set but returns an error on "add to cart clicked" line 51. Not including them adds the t-shirt
function wf2SetUp(){
    console.log("Going to add first item")
    sessionStorage.setItem("image", "../assets/StockImages/bathAll.jpeg")
    sessionStorage.setItem("title", "Magnolia Bath AccessorySet")
    sessionStorage.setItem("price", "$92.78")
    sessionStorage.setItem("URI", "http://localhost:8080/basicOnlineStore/Bath")
    //addToCartClicked()
    console.log("Added first item, going to add second")
    sessionStorage.setItem("image", "../assets/StockImages/KidsGraphicTees/Tee2Front.jpeg")
    sessionStorage.setItem("title", "Looney Tunes Tweety Graphic Tee")
    sessionStorage.setItem("price", "$40.00")
    sessionStorage.setItem("URI", "http://localhost:8080/basicOnlineStore/KidsGraphicTees")
    //addToCartClicked()
    console.log("Added second item")
}
