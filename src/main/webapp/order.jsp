<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }

        .carousel-inner img {
            width: 100%; /* Set width to 100% */
            margin: auto;
            min-height:200px;
           /* max-height:300px;*/
        }

        /* Hide the carousel text when the screen is less than 600 pixels wide */
        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="img/coffee-bean-1209234_1920.jpg" alt="Image">
            <div class="carousel-caption">
                <h3>Sell $</h3>
                <p>Money Money.</p>
            </div>
        </div>

        <div class="item">
            <img src="img/white-2569443_1920.jpg" alt="Image">
            <div class="carousel-caption">
                <h3>More Sell $</h3>
                <p>Lorem ipsum...</p>
            </div>
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="container text-center">
    <h3 style="text-align: center; color: aqua">CURRENT ORDER</h3><br>
    <div class="row">
        <div class="col-sm-4">
            <div id="menubar">
                <!--Menu goes here-->
            </div>
        </div>
        <div class="col-sm-5">

            <table class="table table-fixed" id="orderTable">
                <thead>
                <tr class="hidden">
                    <th></th>
                    <th class="quantityForDiscount"></th>
                    <th class="valueForFreeDelivery"></th>
                    <th class="defaultDeliveryCost"></th>
                </tr>
                <tr>
                    <th>#</th>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                </thead>
                <tbody id="bodyofordertable">
                <!--orderTable goes here-->
                </tbody>
                <tfoot>
                <tr>
                    <td></td>
                    <td>TotalOrder</td>
                    <td id="totalquantity">0</td>
                    <td id="totalprice">0</td>
                </tr>
                <tr id="deliveryrow">
                    <td></td>
                    <td>Delivery</td>
                    <td></td>
                    <td id="deliveryprice">0</td>
                </tr>
                <tr>
                    <td></td>
                    <td>Total</td>
                    <td></td>
                    <td id="totalvalue">0</td>
                </tr>
                </tfoot>
            </table>
            <button class="btn btn-outline-danger hidden" type="button" id="addressbutton"
                    data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                Fill your address, Mr.Anderson.
            </button>

            <div class="collapse" id="collapseExample">
                <div class="card card-body">
                    <form id="addressform" >
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="validationServer01">First and Last name</label>
                                <input type="text" class="form-control address" id="validationServer01" name="name" pattern="[A-Za-z]{1,30}[ ]{1}[A-Za-z]{1,30}"
                                       placeholder="Thomas Anderson" value="" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="validationServer02">Telephone</label>
                                <input type="tel" class="form-control address" id="validationServer02" name="phone" pattern="[+]{1}[0-9]{12}"
                                       placeholder="+375298189532" value="" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="validationServer03">Street</label>
                                <input type="text" class="form-control address" id="validationServer03" name="street" pattern="[A-Za-z]{2,40}"
                                       placeholder="Javenue" required>
                                <div class="invalid-feedback">
                                    Please provide a valid street.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationServer04">House</label>
                                <input type="text" class="form-control address" id="validationServer04" name="house" pattern="[1-9]{1,4}"
                                       placeholder="42" required>
                                <div class="invalid-feedback">
                                    Please provide a valid house number.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationServer05">Flat</label>
                                <input type="text" class="form-control address" id="validationServer05" name="flat" pattern="[1-9]{1,4}"
                                       placeholder="42" required>
                                <div class="invalid-feedback">
                                    Please provide a valid flat number.
                                </div>
                            </div>
                        </div>

                    </form>
                    <button class="btn btn-outline-success" onclick="acceptFunction()">SEND AN ORDER</button>
                </div>
            </div>
            <div style="text-align: center" class="hidden"></div>
        </div>

        <div class="col-sm-3">
            SERVICE
        </div>
    </div>
    </div>
</div><br>

<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>

</body>
</html>