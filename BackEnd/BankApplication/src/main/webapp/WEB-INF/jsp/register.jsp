<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootStrapCSS/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesomeCSS/fontawesome.css">
    <link rel="stylesheet" href="css/default/default.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <title>Register</title>
</head>


<body class="d-flex align-items-center justify-content-center">
    <!-- Card Register Form Card -->
    <div class="card registration-form-card col-6 bg-transparent border-0">
        <!-- Card Body -->
        <div class="card-body">
            <!-- Form Header -->
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-edit"></i> Register
            </h1>
            <!-- End Of Form Header -->

            <!-- Registration Form -->
            <form action="" class="reg-form">
                <!-- Row -->
                <div class="row">
                        <!-- First Name -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <input type="text" name="first_name" class="form-control form-control-lg" placeholder="Enter First Name"/>
                    </div>
                    <!-- End Of From Group -->
                        <!-- Last Name -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <input type="text" name="last_name" class="form-control form-control-lg" placeholder="Enter Last Name"/>
                    </div>
                    <!-- End Of From Group -->
                </div>
                <!-- End Of Row -->
                    <!-- Email -->
                <!-- From Group -->
                <div class="form-group col">
                    <input type="email" name="email" class="form-control form-control-lg" placeholder="Enter Email"/>
                </div>
                <!-- End Of From Group -->
                    <!-- Row -->
                <div class="row">
                        <!-- Password 1 -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <input type="password" name="password" class="form-control form-control-lg" placeholder="Enter Password"/>
                    </div>
                    <!-- End Of From Group -->
                        <!-- Password 2 -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <input type="password" name="confirm_password" class="form-control form-control-lg" placeholder="Confirm Password"/>
                    </div>
                    <!-- End Of From Group -->
                </div>
                    <!-- End Of Row -->

                    <!-- From Group -->
                <div class="form-group col">
                    <button class="btn btn-lg">Register</button>
                </div>
                <!-- End Of From Group -->
            </form>
            <!-- End Of Registration Form -->

            <!-- Card Text -->
            <p class="card-text text-white my-2">
                Already have an account? <span class="ms-2 text-warning"><a href="/login">Sign In</a><span>
            </p>
            <!-- End Card Text -->

            <!-- Back Button To Landing Page  -->
            <small class="text-warning">
                <i class="fa fa-arrow-alt-circle-left"></i> <a href="/" class="btn btn-sm text-warning">Back</a>
            </small>
        </div>
        <!-- End Of Card Body -->
    </div>
    <!-- End Card Register Form Card -->

</body>
</html>