%{--All kid's shoes products page--}%
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kid's Shoes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale = 1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
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

<div class=row1>
    <figure style="margin-left:20px; width:150px; display: inline-block;">
        <a href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsSneaker', params: [])}"
           style="text-decoration: none; color:black;"><img src="../assets/StockImages/side.jpg" alt="Product_sneakers"
                                                            hspace="40" width="100"><figcaption
                style="text-align: center">Converse Sneakers</figcaption></a>
    </figure>

    <figure style="margin-left:20px; width:150px; display: inline-block;">
        <a href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsShoesTwo', params: [])}"
           style="text-decoration: none; color:black;"><img src="../assets/StockImages/KidsShoes2Front.jpeg" alt="Product_sneakers"
                                                            hspace="40" width="100"><figcaption
                style="text-align: center">DEER STAGS High Top Sneaker Boot</figcaption></a>
    </figure>

    <figure style="margin-left:20px; width:150px; display: inline-block;">
        <a href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsShoesThree', params: [])}"
           style="text-decoration: none; color:black;"><img src="../assets/StockImages/KidsShoes3Front.jpeg" alt="Product_sneakers"
                                                            hspace="40" width="100"><figcaption
                style="text-align: center">Totes Tall Waterproof Rain Boots</figcaption></a>
    </figure>

</div>
</body>
</html>