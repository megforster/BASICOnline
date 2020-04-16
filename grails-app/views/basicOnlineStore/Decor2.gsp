<%--
  Created by IntelliJ IDEA.
  User: meganforster
  Date: 4/15/20
  Time: 12:33 PM
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lumisource Salon Contemporary Floor Lamp</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/4e611744ca.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'GenericProductStyle.css')}" type="text/css">
    <asset:javascript src="cart.js"/>
    <link rel="icon" href="../assets/BASICLogo.jpg">
</head>

<body>
<div id="nav-placeholder">
</div>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
    $.get("${g.createLink(controller : 'basicOnlineStore', action : 'header',params : [])}", function (data) {
        $("#nav-placeholder").replaceWith(data);
    });
</script>

<div class="containerProduct">
    <div class="row">
        <div class="col-md-5">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="shop-item-image " src="../assets/StockImages/Decor2.jpeg"
                             class="d-block w-100" alt="First Slide">
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

        <div class="col-md-7">
            <p class="newItems text-center">NEW</p>

            <h2 class=shop-item-title>Lumisource Salon Contemporary Floor Lamp</h2>

            <p>Product Code: ISRC6092</p>
            <img src="../assets/StockImages/5stars.png" width="150px">

            <p class="shop-item-price">$229.99</p>

            <p><b>Brand:</b>Lumisource</p>
            <button type="button" class="cart shop-item-button" onclick="passValues()">
                Add to cart
            </button>
            <div id="snackbar">Item added to cart!</div>
        </div>
    </div>
</div>
</body>