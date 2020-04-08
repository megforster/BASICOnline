<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DKNY SPORTS BRA</title>
    <!-- Bootstrap CDN-->
   %{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">--}%
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CDN -->
    <script src="https://kit.fontawesome.com/4e611744ca.js" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'GenericProductStyle.css')}" type="text/css">

    %{--<script src="../js/cart.js"></script>--}%
    <asset:javascript src="cart.js"/>
    <link rel="icon" href="../assets/BASIC logo.jpg">
%{--    <script>--}%
%{--        function passValues() {--}%
%{--            var imageSrc = document.getElementsByClassName("shop-item-image")[0].src--}%
%{--            var productTitle = document.getElementsByClassName("shop-item-title")[0].innerText--}%
%{--            var productPrice = document.getElementsByClassName("shop-item-price")[0].innerText--}%
%{--            addItemToCart2(productTitle, productPrice, imageSrc, 1)--}%
%{--            // sessionStorage.setItem("image", imageSrc)--}%
%{--            // sessionStorage.setItem("title", productTitle)--}%
%{--            // sessionStorage.setItem("price", productPrice)--}%
%{--            // sessionStorage.setItem("URI", "http://localhost:8080/basicOnlineStore/WomensActiveWear")--}%
%{--            // return false;--}%
%{--        }--}%
%{--    </script>--}%

</head>
<body>

<div id="nav-placeholder">

</div>

<script src="//code.jquery.com/jquery.min.js"></script>
<script>
    $.get("${g.createLink(controller : 'basicOnlineStore', action : 'header',params : [])}", function(data){
        $("#nav-placeholder").replaceWith(data);
    });
</script>

<div class = "containerProduct">
    <div class = "row">
        <div class = "col-md-5">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class = "shop-item-image " src="../assets/StockImages/WomensActiveWear/SportsBra1Front.jpeg" class="d-block w-100" alt="First Slide">
                    </div>
                    <div class="carousel-item">
                        <img src="../assets/StockImages/WomensActiveWear/SportsBra1Back.jpeg"  class="d-block w-100" alt="Second Slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class = "col-md-7">
            <p class="newItems text-center">NEW</p>
            <h2 class = shop-item-title>DKNY Sports Bra</h2>
            <p>Product Code: ISRC6672</p>
            <img src="../assets/StockImages/5stars.png" width="150px">
            <p class = "shop-item-price">$27.30</p>
            <p><b>Brand:</b>DKNY</p>
            <button type ="button" class="cart shop-item-button" onclick="passValues2()">
                Add to cart
%{--                <a href="${g.createLink(controller : 'basicOnlineStore', action : 'shoppingCart',params : [])}" onclick="passValues();">Add to cart</a>--}%
            </button>

        </div>
    </div>
</div>
</body>
</html>