let whichwf = document.getElementById("wf").innerText
console.log(typeof whichwf)
console.log("whichwf: "+whichwf)
let half = whichwf.split('#') [1]
console.log(typeof half)
console.log("half: "+half)
let num = half.split(":")[0]
console.log(typeof num)
console.log("num: "+num)
let myInterval;

if(1==num){
    console.log("ONE HERE")
    wf1SetUp()
    myInterval=window.setInterval(checkIfWf1Done, 1000);
}else if(2==num){
    console.log("TWO HERE")
    wf2SetUp()
    myInterval = window.setInterval(checkIfWf2Done, 1000);
}else if(3==num) {
    console.log("THREE HERE")
    wf3SetUp() //Don't think this is properly putting stuff in cart
    myInterval = window.setInterval(checkIfWf3Done, 1000);
}else if(4==num) {
    console.log("FOUR HERE")
    wf4SetUp()
    myInterval = window.setInterval(checkIfWf4Done, 1000);
}else if(5==num){
    console.log("FIVE HERE")
    wf5SetUp()
    myInterval=window.setInterval(checkIfWf5Done, 1000);
}else{
    console.log("Everything FAILED")
}

function wf1SetUp(){
    console.log("Setting up WF 1, URI is "+sessionStorage.getItem("URI"))
    emptyCart2()
    if(sessionStorage.getItem("URI")!=null){
        sessionStorage.removeItem("URI")
    }
}

function checkIfWf1Done(){
    console.log("CHECKING!!!")
    if(sessionStorage.getItem("URI")!=null){
        if(sessionStorage.getItem("URI")== "http://localhost:8080/basicOnlineStore/MensRedCoat"){
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style .visibility = "visible"
            sessionStorage.removeItem("URI")
            window.clearInterval(myInterval);
        }
    }
}



function wf2SetUp() {
    emptyCart2()
}

function checkIfWf2Done() {
    cart = loadCart2()
    if (cart != null && cart.length > 0) {
        alert("Great Job! You Completed the Activity!")
        document.getElementById('placeHolderBack').style .visibility = "visible"
        window.clearInterval(myInterval);
    }
}

function wf3SetUp(){
    emptyCart2()
    addItemToCart2("Love Graphic Tee", 10, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
    addItemToCart2("Love Graphic Tee B", 15, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
}

function checkIfWf3Done(){
    cart = loadCart2()
    if (cart == null || cart.length == 0) {
        alert("Great Job! You Completed the Activity!")
        document.getElementById('placeHolderBack').style.visibility = "visible"
        emptyCart2()
        window.clearInterval(myInterval);
    }
}

function wf4SetUp() {
    emptyCart2()
    addItemToCart2("Magnolia Bath Accessory Set", 92.78, "http://localhost:8080/assets/StockImages/bathAll.jpeg", 3)
}

//Not working, trying to figure out how to get quanity changes to save to item
function checkIfWf4Done(){
    //console.log("-------Checking if 4 done-------")
    let itemsInCart = loadCart2()
    for(var i = 0; i<itemsInCart.length;i++){
        item = itemsInCart[i]
        //console.log("CHECKING"+item)
        //console.log(item.quantity)
        if(item.quantity==1){
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style.visibility = "visible"
            window.clearInterval(myInterval);
        }
    }
}

function wf5SetUp() {
emptyCart2()
addItemToCart2("Yogalicious Leggings", 39.95, "http://localhost:8080/assets/StockImages/leggings1.jpg",5);
addItemToCart2("Champion Sports Bra", 24.00, "http://localhost:8080/assets/StockImages/WomensActiveWear/SportsBra3Front.jpeg",1)
addItemToCart2("Kid's Converse Sneakers", 50.45, "http://localhost:8080/assets/StockImages/side.jpg",2)

}

function checkIfWf5Done(){
//Check if cart has specific items with specific quantities
//Want one pair of leggings, no sports bra, 2 pairs of sneakers, a mens red coat, and a childs graphic tee
}


