<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootStrapCSS/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesomeCSS/fontawesome.css">
    <link rel="stylesheet" href="css/default/main.css">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="js/bootstrap.bundle.js"></script>

    <title>Dashboard</title>
</head>
<body>

    <!-- Main Page Header -->
    <header class="main-page-header mb-3 bg-primary">
        <!-- Container -->
        <div class="container2 d-flex align-items-center">
            <!-- Company name -->
            <div class="company-name">
                Reflexion Bank
            </div>
            <!-- Company name -->

            <!-- Navigation -->
            <nav class="navigation">
                <li><a href="">Dashboard</a></li>
                <li><a href="">Payment History</a></li>
                <li><a href="">Transaction History</a></li>
            </nav>
            <!-- End Navigation -->

            <!-- Display name -->
            <div class="display-name ms-auto text-white">
                <i class="fa fa-circle text-success" style="padding: 5px;"></i> Welcome:<span> Ion Vacarciuc</span>
            </div>
            <!-- End of display name -->

            <!-- Log Out Button -->
            <a href="" class="btn btn-sm text-white">
                <i class="fas fa-sign-out-alt" style="margin-right: 7px;" aria-hidden="true"></i>Sign Out
            </a>
            <!-- End Log Out Button -->
        </div>
        <!-- End Of Container -->
    </header>
    <!-- End Main Page Header -->

    <!-- Start Of Transact OffCanvas -->
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Transact</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
            <!-- OffCanvas: Transact Body -->
            <div class="offcanvas-body">
                <small class="card-text">
                    Choose an option below to perform a transaction
                </small>
                <!-- Transaction Type Drop Down List -->
                <select name="transact-type" class="form-control my-2" id="transact-type">
                    <option value="">--Select Transaction Type--</option>
                    <option value="payment">Payment</option>
                    <option value="transfer">Transfer</option>
                    <option value="deposit">Deposit</option>
                    <option value="withdraw">Withdraw</option>
                </select>
                <!-- End Of Transaction Type Drop Down List -->

                <!-- Card: Payment Card -->
                <div class="card payment-card">
                    <!-- Card Body -->
                    <div class="card-body">
                        <!-- From Group -->
                        <div class="from-group mb-2">
                            <label for="">Account Holder / Beneficiary</label>
                            <input type="text" name="Beneficiary" class="form-control" placeholder="Enter Account Holder/ Beneficiary Name">
                        </div>
                        <!-- End Of From Group -->

                        <!-- From Group -->
                        <div class="from-group mb-2">
                            <label for="">Beneficiary Account Number</label>
                            <input type="text" name="account_number" class="form-control" placeholder="Enter Beneficiary Account No">
                        </div>
                        <!-- End Of From Group -->

                        <!-- From Group -->
                        <div class="from-group">
                            <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control my-1" id="">
                                <option value="">--Select Account</option>
                            </select>
                            <!-- End Select Account Option -->
                        </div>
                        <!-- End Of From Group -->

                        <!-- From Group -->
                        <div class="from-group mb-2">
                            <label for="">Reference</label>
                            <input type="text" name="reference" class="form-control" placeholder="Enter Reference">
                        </div>
                        <!-- End Of From Group -->

                        <!-- From Group -->
                        <div class="from-group mb-2">
                            <label for="">Enter Payment Amount</label>
                            <input type="text" name="payment-amount" class="form-control" placeholder="Enter Payment Amount">
                        </div>
                        <!-- End Of From Group -->

                         <!-- From Group -->
                         <div class="from-group mb-2">
                            <button id="" class="btn btn-md transact-btn">Pay</button>
                        </div>
                        <!-- End Of From Group -->
                    </div>
                    <!-- End Card Body -->
                </div>
                <!-- End Of Card: Payment Card -->

                <!-- Card: Transfer Card -->
                <div class="card transfer-card">
                    <!-- Card Body -->
                    <div class="card-body">
                        <!-- From Group -->
                        <div class="from-group">
                            <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control my-1" id="">
                                <option value="">--Select Account</option>
                            </select>
                            <!-- End Select Account Option -->
                        </div>
                        <!-- End Of From Group -->

                        <!-- From Group -->
                        <div class="from-group">
                            <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control my-1" id="">
                                <option value="">--Select Account</option>
                            </select>
                            <!-- End Select Account Option -->
                        </div>
                        <!-- End Of From Group -->

                        <!-- From Group -->
                        <div class="from-group mb-2">
                            <label for="">Enter Transfer Amount</label>
                            <input type="text" name="transfer-amount" class="form-control" placeholder="Enter Transfer Amount">
                        </div>
                        <!-- End Of From Group -->

                        <!-- From Group -->
                        <div class="from-group mb-2">
                            <button id="" class="btn btn-md transact-btn">Transfer</button>
                        </div>
                        <!-- End Of From Group -->

                    </div>
                    <!-- End Card Body -->
                </div>
                <!-- End Of Card: Transfer Card -->

                <!-- Card: Deposit Card -->
                <div class="card deposit-card">
                    <!-- Card Body -->
                    <div class="card-body">
                        <!-- Deposit form -->
                        <form action="" class="deposit-form">
                            <!-- From Group -->
                            <div class="from-group mb-2">
                                <label for="">Enter Deposit Amount</label>
                                <input type="text" name="deposit-amount" class="form-control" placeholder="Enter Deposit Amount">
                            </div>
                            <!-- End Of From Group -->

                            <!-- From Group -->
                            <div class="from-group">
                                <label for="">Select Account</label>
                                <!-- Select Account Option -->
                                <select name="account_id" class="form-control my-1" id="">
                                    <option value="">--Select Account</option>
                                </select>
                                <!-- End Select Account Option -->
                            </div>
                            <!-- End Of From Group -->

                            <!-- From Group -->
                            <div class="from-group my-2">
                                <button id="" class="btn btn-md transact-btn">Deposit</button>
                            </div>
                            <!-- End Of From Group -->
                        </form>
                        <!-- End Deposit form -->
                    </div>
                    <!-- End Card Body -->
                </div>
                <!-- End Of Card: Deposit Card -->

                <!-- Card: Withdraw Card -->
                <div class="card withdraw-card">
                    <!-- Card Body -->
                    <div class="card-body">
                        <!-- Withdraw form -->
                        <form action="" class="wihthdraw-form">
                            <!-- From Group -->
                            <div class="from-group mb-2">
                                <label for="">Enter Withdraw Amount</label>
                                <input type="text" name="withdrawal-amount" class="form-control" placeholder="Enter Withdrawal Amount">
                            </div>
                            <!-- End Of From Group -->

                            <!-- From Group -->
                            <div class="from-group">
                                <label for="">Select Account</label>
                                <!-- Select Account Option -->
                                <select name="account_id" class="form-control my-1" id="">
                                    <option value="">--Select Account</option>
                                </select>
                                <!-- End Select Account Option -->
                            </div>
                            <!-- End Of From Group -->

                            <!-- From Group -->
                            <div class="from-group my-2">
                                <button id="" class="btn btn-md transact-btn">Withdraw</button>
                            </div>
                            <!-- End Of From Group -->
                        </form>
                        <!-- End Withdraw form -->
                    </div>
                    <!-- End Card Body -->
                </div>
                <!-- End Of Card: Withdraw Card -->

            </div>
            <!-- End Of OffCanvas: Transact Body -->
    </div>
    <!-- End Start Of Transact OffCanvas -->
<!-- ////////////////////////////////////////// -->
    <!-- Ride Side OffCanvas: Accounts Form Container -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 id="offcanvasRightLabel">Create An Account</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <!-- OffCanvas Body: Accounts Form Wrapper -->
        <div class="offcanvas-body">
            <!-- Card: Accounts Form Card -->
                <!-- Card Body -->
                <div class="card-body">
                    <form action="" class="add-account-form">
                        <!-- Form Group -->
                        <div class="form-group mb-3">
                            <label for="">Enter Account Name</label>
                            <input type="text" name="accouunt" class="form-control" placeholder="Enter Account Name...">
                        </div>
                        <!-- End Of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group mb-3">
                            <label for="">Select Account Type</label>
                            <select name="account-type" class="form-control" id="">
                                <option value="">--Select Account Type--</option>
                                <option value="check">Check</option>
                                <option value="saving">Savings</option>
                                <option value="business">Business</option>
                            </select>
                        </div>
                        <!-- End Of Form Group -->
                        <!-- From Group -->
                        <div class="from-group my-2">
                            <button id="" class="btn btn-md transact-btn">Add Account</button>
                        </div>
                        <!-- End Of From Group -->
                    </form>
                </div>
                <!-- End Of Card Body -->
            <!-- End Of Card: Accounts Form Card -->
        </div>
        <!-- End Of OffCanvas Body: Accounts Form Wrapper -->
    </div>
    <!-- End Of Ride Side OffCanvas: Accounts Form Container -->

    <!--Container-->
    <div class="container d-flex">
        <button id="add-account-btn" class="btn btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
            <i class="fa fa-credit-card"></i> Add New Account
        </button>
        <!-- Transaction Button -->
        <button id="transact-btn" class="btn btn-lg ms-auto shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
           <i class="fa fa-wallet"></i> Transact
        </button>
        <!-- End Transaction Button -->
    </div>
    <!-- End Of Container -->

    <!-- Container: Total Accounts Balance Display -->
    <div class="container d-flex py-3">
        <h2 class="me-auto">Total Accounts Balance: </h2>
        <h2 class="ms-auto">0.00</h2>
    </div>
    <!-- End Of Container: Total Accounts Balance Display -->

    <!-- Container: Accordion Menu/Drop Down -->
    <div class="container">
        <!-- Accordion Menu/ Drop Down -->
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingOne">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                  Accordion Item #1
                </button>
              </h2>
              <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                  Accordion Item #2
                </button>
              </h2>
              <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                  Accordion Item #3
                </button>
              </h2>
              <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
              </div>
            </div>
        </div>
        <!-- End Of Accordion Menu/Drop Down  -->
    </div>
    <!-- End Of Container: Accordion Menu/Drop Down -->

    <!-- Container: No Accounts -->
    <div class="container">
        <!-- Card: No Accounts -->
        <div class="card no-accounts-card">
            <!-- Card Body -->
            <div class="card-body">
                <!-- Card title -->
                <h1 class="card-title">
                    <i class="fas fa-ban text-danger"></i>No Register Accounts
                </h1>
                <!-- End Card Title -->

                <!-- Card Text -->
                <div class="card-text">
                    You currently do not have any registred accounts. <br>
                    Please click below to register/add a new account.
                </div>
                <!-- End Card Text -->
                <br>
                <button id="" class="btn btn-primary btn-mg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                    <i class="fa fa-credit-card"></i> Add New Account
                </button>
            </div>
            <!-- End Card Body -->
        </div>
        <!-- End Of Card: No Accounts -->
    </div>
    <!-- End Of Container: No Accounts -->

    <script src="js/main.js"></script>
</body>
</html>