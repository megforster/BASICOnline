%{--Header navigation for every online store page--}%
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/4e611744ca.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'header.css')}" type="text/css">
    <link rel="icon" href="../assets/BASICLogo.jpg">
</head>

<body>
<header>
    <body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-12 col-12">
            </div>

            <div class="col-md-4 col-12 text-center">
                <h2 class="my-md-3 site-title text-white">BASIC Online Store</h2>
            </div>

            <div class="col-md-4 col-12 text-right">
                <p class="my-md-4 header-links">
                    <!--MODAL START-->
                    <button type=button" class="btn btn-info" data-toggle="modal" data-target="#signIn">Sign In</button>
                    <button type=button" class="btn btn-info" data-toggle="modal" data-target="#create">Create Account
                    </button>

                    <div id="signIn" class="modal fade" role="dialog" tabindex="-1">
                        <div class="modal-dialog" data-dismiss="modal">
                            <div class="modal-content">
                                <div class="modal-body">

                <p>Since this is a mock online store, we won't have you sign into an actual account. But this is where
                the sign in option typically is on web pages!</p>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
    </div>

    <div id="create" class="modal fade" role="dialog">
        <div class="modal-dialog" data-dismiss="modal">
            <div class="modal-content">
                <div class="modal-body">
                    <p>Since this is a mock online store, we won't have you create an actual account. But this is where
                    the sign in option typically is on web pages!</p>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    </p>
    </div>
    </div>
    </div>

    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link"
                           href="${g.createLink(controller: 'basicOnlineStore', action: 'renderFinalView', params: [])}">LANDING PAGE<span
                                class="sr-only">(current)</span></a>
                    </li>

                    <div class="dropdown">
                        <button class="btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonWomen"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            WOMEN
                        </button>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonWomen">
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensActiveWear', params: [])}">ACTIVE WEAR</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensBottoms', params: [])}">BOTTOMS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensCoats', params: [])}">COATS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensShoes', params: [])}">SHOES</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensSwimWear', params: [])}">SWIM WEAR</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensTops', params: [])}">TOPS</a>
                        </div>

                    </div>

                    <div class="dropdown">
                        <button class="btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonMen"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            MEN
                        </button>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonMen">
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensActiveWear', params: [])}">ACTIVE WEAR</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensBottoms', params: [])}">BOTTOMS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensCoats', params: [])}">COATS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensShoes', params: [])}">SHOES</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensSwimWear', params: [])}">SWIM WEAR</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensTops', params: [])}">TOPS</a>
                        </div>
                    </div>

                    <div class="dropdown">
                        <button class="btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonKid"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            KIDS
                        </button>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonKid">
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsCoats', params: [])}">COATS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsDresses', params: [])}">DRESSES</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsGraphicTees', params: [])}">GRAPHIC TEES</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsJeans', params: [])}">JEANS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsShoes', params: [])}">SHOES</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsSwimWear', params: [])}">SWIM WEAR</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsTops', params: [])}">TOPS</a>
                        </div>
                    </div>

                    <div class="dropdown">
                        <button class="btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonOuterwear"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            OUTERWEAR
                        </button>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonOuterwear">
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensCoats', params: [])}">WOMEN'S COATS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensCoats', params: [])}">MEN'S COATS</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsCoats', params: [])}">KID'S COATS</a>
                        </div>
                    </div>

                    <div class="dropdown">
                        <button class="btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonShoe"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            SHOES
                        </button>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonShoe">
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'womensShoes', params: [])}">WOMEN'S SHOES</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'mensShoes', params: [])}">MEN'S SHOES</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'kidsShoes', params: [])}">KID'S SHOES</a>
                        </div>
                    </div>

                    <div class="dropdown">
                        <button class="btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonHome"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            HOME
                        </button>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButtonHome">
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'bedding', params: [])}">BEDDING</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'decor', params: [])}">DECOR</a>
                            <a class="dropdown-item"
                               href="${g.createLink(controller: 'basicOnlineStore', action: 'bath', params: [])}">BATH</a>
                        </div>
                    </div>
                </ul>
            </div>

           %{-- data-toggle="modal" data-target="#signIn">Sign In</button>
            <button type=button" class="btn btn-info" data-toggle="modal" data-target="#create"
            onclick="$(document).ready(function () {
                        $('#searching').modal('show');
                    });">--}%



            <div class="navbar-nav">
                <li class="nav-item border rounded-circle mx-2 search-icon">
                    <a class="fas fa-search p-2" data-toggle="modal" data-target="#searching">
                    </a>
                </li>
                <li class="nav-item border rounded-circle mx-2 basket-icon">
                    <a class="fas fa-shopping-basket p-2"
                       href="${g.createLink(controller: 'basicOnlineStore', action: 'shoppingCart', params: [])}"></a>
                </li>
            </div>

                <div id="searching" class="modal fade" role="dialog">
                    <div class="modal-dialog" data-dismiss="modal">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p>Normally sites let you search for specific items. Look for a search symbol like this or a bar across the top of the page you can type in.</p>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        </nav>
    </div>

    </body>
</header>
</body>
</html>