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


//Booleans and array used in Workflow 5 Completion
let correctCart = []
let addedL = false;
let addedS = false;
let addedM = false;
let addedH = false;


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
            document.getElementById('wf#').innerText = "Great Job! You Completed Activity 1!"
            $('#activityComplete').modal('show');
            sessionStorage.removeItem("URI")
            window.clearInterval(myInterval);
        }
    }
}

//Sets up online store for activity 2
function wf2SetUp() {
    emptyCart()
    addedL = false;
    addedH = false;
    addedM = false;
    addedS = false;
}

//Checks online store to see if activity 2 has been completed
function checkIfWf2Done() {
    cart = loadCart()
    if (cart != null && cart.length > 0) {
        document.getElementById('wf#').innerText = "Great Job! You Completed Activity 2!"
        $('#activityComplete').modal('show');
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
    console.log("HERE!")
    console.log(cart.length)
    if (cart == null || cart.length == 0) {
        document.getElementById('wf#').innerText = "Great Job! You Completed Activity 3!"
        $('#activityComplete').modal('show');
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
    let itemsInCart = loadCart()
    for (var i = 0; i < itemsInCart.length; i++) {
        item = itemsInCart[i]
        if (item.quantity == 1 && item.title.localeCompare("Magnolia Bath Accessory Set") == 0) {
            document.getElementById('wf#').innerText = "Great Job! You Completed Activity 4!"
            $('#activityComplete').modal('show');
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
    correctCart = []
}

//Checks online store to see if activity 5 has been completed
function checkIfWf5Done() {
    let itemsInCart = loadCart()
    for (var i = 0; i < itemsInCart.length; i++) {
        let item = itemsInCart[i]
        if (item.title.localeCompare("Yogalicious Leggings") == 0) {
            if (item.quantity == 2) {
                if (!addedL) {
                    correctCart.push(1);
                    addedL = true;
                }
            }
        } else if (item.title.localeCompare("Kid's Converse Sneakers") == 0) {
            if (item.quantity == 2) {
                if (!addedS) {
                    correctCart.push(2);
                    addedS = true;
                }
            }
        } else if (item.title.localeCompare("Magnolia Bath Accessory Set") == 0) {
            if (item.quantity == 1) {
                if (!addedM) {
                    correctCart.push(3);
                    addedM = true;
                }
            }

        } else if (item.title.localeCompare("Hawke and Co Red Coat") == 0) {
            if (item.quantity == 1) {
                if (!addedH) {
                    correctCart.push(4);
                    addedH = true;
                }
            }
        } else {

        }
    }
    if (correctCart.length === 4) {
        document.getElementById('wf#').innerText = "Great Job! You Completed Activity 5!"
        $('#activityComplete').modal('show');
        window.clearInterval(myInterval);
    }
}


