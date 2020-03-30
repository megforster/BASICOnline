var myInverval = window.setInterval(checkIfWf1Done, 1000);

function checkIfWf1Done() {
    //alert("We going!")
    if(sessionStorage.getItem("cart")!=null){
        if(sessionStorage.getItem("cart").length>2){
            alert("Great Job! You Completed the Activity!")
            document.getElementById('placeHolderBack').style .visibility = "visible"
            sessionStorage.removeItem("cart")
           window.clearInterval(myInverval);
        }
    }

}
