//Gets the activity title
let whichwf = document.getElementById("wf").innerText
//console.log(typeof whichwf)
//console.log("whichwf: "+whichwf)

//Gets gets the activity number along with ':' symbol
let half = whichwf.split('#') [1]
//console.log(typeof half)
//console.log("half: "+half)

//Gets the activity number by itself
let num = half.split(":")[0]
//console.log(typeof num)
//console.log("num: "+num)

//Create variable for repeating check
let myInterval;

//Compares the activities number against a number 1-5 representing possible activities
//Calls respective activity set up function and creates the interval for repeated completion checking every second
if (1 == num) {
    //console.log("ONE HERE")
    wf1SetUp()
    myInterval = window.setInterval(checkIfWf1Done, 1000);
} else if (2 == num) {
    //console.log("TWO HERE")
    wf2SetUp()
    myInterval = window.setInterval(checkIfWf2Done, 1000);
} else if (3 == num) {
    //console.log("THREE HERE")
    wf3SetUp() //Don't think this is properly putting stuff in cart
    myInterval = window.setInterval(checkIfWf3Done, 1000);
} else if (4 == num) {
    //console.log("FOUR HERE")
    wf4SetUp()
    myInterval = window.setInterval(checkIfWf4Done, 1000);
} else if (5 == num) {
    //console.log("FIVE HERE")
    wf5SetUp()
    myInterval = window.setInterval(checkIfWf5Done, 1000);
} else {
    //console.log("Everything FAILED")
}

//Sets up online store for activity 1
function wf1SetUp() {
    //console.log("Setting up WF 1, URI is "+sessionStorage.getItem("URI"))
    emptyCart()
    if (sessionStorage.getItem("URI") != null) {
        sessionStorage.removeItem("URI")
    }
}

//Checks online store to see if activity 1 has been completed
function checkIfWf1Done() {
    //console.log("CHECKING!!!")
    if (sessionStorage.getItem("URI") != null) {
        if (sessionStorage.getItem("URI") == "http://localhost:8080/basicOnlineStore/MensRedCoat") {
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style.visibility = "visible"
            sessionStorage.removeItem("URI")
            window.clearInterval(myInterval);
            for (var i = 0; i < itemsInCart.length; i++) {
                item = itemsInCart[i]
                console.log(item)
            }
        }
    }
}

//Sets up online store for activity 2
function wf2SetUp() {
    emptyCart()
}

//Checks online store to see if activity 2 has been completed
function checkIfWf2Done() {
    cart = loadCart()
    if (cart != null && cart.length > 0) {
        alert("Great Job! You Completed the Activity!")
        document.getElementById('placeHolderBack').style.visibility = "visible"
        window.clearInterval(myInterval);
    }
}

//Sets up online store for activity 3
function wf3SetUp() {
    emptyCart()
    addItemToCart("Love Graphic Tee", 10, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
    addItemToCart("Love Graphic Tee B", 15, "http://localhost:8080/assets/StockImages/KidsGraphicTees/Tee1Front.jpeg")
    updateCartTotal()
}

//Checks online store to see if activity 3 has been completed
function checkIfWf3Done() {
    cart = loadCart()
    if (cart == null || cart.length == 0) {
        alert("Great Job! You Completed the Activity!")
        document.getElementById('placeHolderBack').style.visibility = "visible"
        emptyCart()
        window.clearInterval(myInterval);
    }
}

//Sets up online store for activity 4
function wf4SetUp() {
    emptyCart()
    addItemToCart("Magnolia Bath Accessory Set", 92.78, "http://localhost:8080/assets/StockImages/bathAll.jpeg", 3)
}

//Not working, trying to figure out how to get quanity changes to save to item
//Checks online store to see if activity 4 has been completed
function checkIfWf4Done() {
    console.log("-------Checking if 4 done-------")
    let itemsInCart = loadCart()
    for (var i = 0; i < itemsInCart.length; i++) {
        item = itemsInCart[i]
        //console.log("CHECKING"+item)
        console.log(item.quantity)
        if (item.quantity == 1) {
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style.visibility = "visible"
            window.clearInterval(myInterval);
        }
    }
}

//Sets up online store for activity 5
function wf5SetUp() {
    emptyCart()
    addItemToCart("Yogalicious Leggings", 39.95, "http://localhost:8080/assets/StockImages/leggings1.jpg", 5);
    addItemToCart("Champion Sports Bra", 24.00, "http://localhost:8080/assets/StockImages/WomensActiveWear/SportsBra3Front.jpeg", 1)
    addItemToCart("Kid's Converse Sneakers", 50.45, "http://localhost:8080/assets/StockImages/side.jpg", 1)
    let itemsInCart = loadCart()
    for(let i = 0; i<loadCart().length; i++){
        console.log(itemsInCart[i])
    }
}

//Checks online store to see if activity 5 has been completed
function checkIfWf5Done() {
    let itemsInCart = loadCart()
    let correctCart = []
    for (var i = 0; i < itemsInCart.length; i++) {
        item = itemsInCart[i]
        console.log(item)
        if(item.title.localeCompare("Yogalicious Leggings")==0){
            if(item.quantity==2){
                correctCart[0] = 1;
            }
        }else if(item.title.localeCompare("Kid's Converse Sneakers")==0){
            if(item.quantity==2){
                correctCart[1] = 1;
            }
        }else if(item.title.localeCompare("Magnolia Bath Accessory Set")==0){
            if(item.quantity==1){
                correctCart[2] = 1;
            }

        }else if(item.title.localeCompare("Hawke and Co Red Coat")==0){
            if(item.quantity==1){
                correctCart[3] = 1;
            }
        }else{

        }
    }
    if(correctCart.length==4){
        alert("Great Job! You Completed the Activity!")
        document.getElementById('placeHolderBack').style.visibility = "visible"
        window.clearInterval(myInterval);
    }
}


