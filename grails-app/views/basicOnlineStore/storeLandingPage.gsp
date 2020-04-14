%{--Online store landing page--}%
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale = 1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="../assets/BASIC logo.jpg">
    <title>BASIC Online Store</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/4e611744ca.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

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
<main>
    <div class="container-fluid p-0">
        <div class="site-slider">
            <div class="slider-one">
                <div>
                    <img src="../assets/Banners/Sale.jpg" alt="Banner 1" class="img-fluid"
                         style="width:1600px;height:600px;">
                </div>

                <div>
                    <img src="../assets/Banners/New.jpg" alt="Banner 2" class="img-fluid"
                         style="width:1600px;height:600px;">
                </div>

                <div>
                    <img src="../assets/Banners/Shipping.png" alt="Banner 3" class="img-fluid"
                         style="width:1600px;height:600px;">
                </div>
            </div>

            <div class="slider-btn">
                <span class="prev position-top"><i class="fas fa-chevron-left"></i></span>
                <span class="next position-top right-0"><i class="fas fa-chevron-right"></i></span>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="site-slider-two px-md-4">
            <div class="row slider-two tet-center">
                <div class="col-md-2 product pt-md-5 pt-4">
                    <a href="${g.createLink(controller: 'basicOnlineStore', action: 'womensSwimWear', params: [])}">
                        <img src="../assets/FeaturedItems/Swim.jpeg" alt="Product 1" style="width:300px;height:400px;">
                    </a>
                    <span class="border site-btn btn-span">Women's Swim</span>
                </div>

                <div class="col-md-2 product pt-md-5 pt-4">
                    <a href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsJeans', params: [])}">
                        <img src="../assets/FeaturedItems/Jeans.jpeg" alt="Product 2">
                    </a>
                    <span class="border site-btn btn-span">Kid's Jeans</span>
                </div>

                <div class="col-md-2 product pt-md-5 pt-4">
                    <a href="${g.createLink(controller: 'basicOnlineStore', action: 'mensShoes', params: [])}">
                        <img src="../assets/FeaturedItems/Shoes.jpg" alt="Product 3" style="width:400px;height:400px;">
                    </a>
                    <span class="border site-btn btn-span">Men's Shoes</span>
                </div>

                <div class="col-md-2 product pt-md-5 pt-4">
                    <a href="${g.createLink(controller: 'basicOnlineStore', action: 'bedding', params: [])}">
                        <img src="../assets/FeaturedItems/Sheets.jpeg" alt="Product 4"
                             style="width:300px;height:400px;">
                    </a>
                    <span class="border site-btn btn-span">Shop Sheets</span>
                </div>

                <div class="col-md-2 product pt-md-5 pt-4">
                    <a href="${g.createLink(controller: 'basicOnlineStore', action: 'womensCoats', params: [])}">
                        <img src="../assets/FeaturedItems/Coat.jpeg" alt="Product 5" style="width:350px;height:400px;">
                    </a>
                    <span class="border site-btn btn-span">Winter Coats</span>
                </div>

                <div class="col-md-2 product pt-md-5 pt-4">
                    <a href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsDresses', params: [])}">
                        <img src="../assets/FeaturedItems/Dress.jpeg" alt="Product 6" style="width:300px;height:400px;">
                    </a>
                    <span class="border site-btn btn-span">Girl's Dresses</span>
                </div>

            </div>

            <div class="slider-btn">
                <span class="prev position-top"><i class="fas fa-chevron-left fa-2x text-secondary"></i></span>
                <span class="next position-top right-0"><i class="fas fa-chevron-right fa-2x text-secondary"></i></span>
            </div>
        </div>
    </div>

</main>
<footer></footer>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="../assets/main.js"></script>
</body>
</html>