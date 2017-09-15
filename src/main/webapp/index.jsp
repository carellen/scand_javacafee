<!DOCTYPE>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script
            src="https://code.jquery.com/jquery-3.2.1.min.js"
            integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body class="background-image">




            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">LOGO
                        </a>
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


            <div class="col-12" style="color: aqua; text-align: center"><h2>Jersey RESTful Web Application!</h2></div>




        <main class="container centered" >
            <div id="maincontainer">
                <div class="row" id="navbar">
                    <div class="col">item 1</div>
                    <div class="col">item 2</div>
                    <div class="col">item 3</div>
                    <div class="col">item 4</div>
                    <div class="col">item 5</div>
                </div>
                <div class="row" id="mainRow">
                    <div class="col-md-3 col-sm-5 col-xs-4" >
                        <div class="row" id="menubar">
                            <!--Menu goes here-->
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-7 col-xs-4">
                        <h3 style="text-align: center; color: aqua">CURRENT ORDER</h3>
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
                    <div class="col-md-3 col-xs-4">SERVICE</div>
                </div>
            </div>
        </main>
        <footer class="container-fluid text-center" id="footerRow">
                <div class="row" >
                    <div class="col-sm-3">CONTACTS</div>
                    <div class="col-sm-6"><h2>WELCOME TO US AGAIN!</h2></div>
                    <div class="col-sm-3">AuthorsProperty</div>
                </div>
        </footer>

    <script src="js/script.js"></script>
</body>
</html>
