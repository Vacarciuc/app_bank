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
    <title>Login</title>
</head>


<body class="d-flex align-items-center justify-content-center">
    <!-- Card Login Form Card -->
    <div class="card login-form-card col-4 bg-transparent border-0">
        <!-- Card Body -->
        <div class="card-body">
            <!-- Form Header -->
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-user-circle"></i> Login
            </h1>
            <!-- End Of Form Header -->

            <!-- Login Form -->
            <form action="" class="login-form">
                    <!-- Email -->
                <!-- From Group -->
                <div class="form-group col">
                    <input type="email" name="email" class="form-control form-control-lg" placeholder="Enter Email"/>
                </div>
                <!-- End Of From Group -->

                    <!-- Password 1 -->
                <!-- From Group -->
                <div class="form-group col">
                    <input type="password" name="password" class="form-control form-control-lg" placeholder="Enter Password"/>
                </div>
                <!-- End Of From Group -->

                    <!-- From Group -->
                <div class="form-group col">
                    <button class="btn btn-lg">Login</button>
                </div>
                <!-- End Of From Group -->
            </form>
            <!-- End Of Login Form -->

            <!-- Card Text -->
            <p class="card-text text-white my-2">
                Dont have an account? <span class="ms-2 text-warning"><a href="/register">Sign Up</a></span>
            </p>
            <!-- End Card Text -->

            <!-- Back Button To Landing Page  -->
            <small class="text-warning">
                <i class="fa fa-arrow-alt-circle-left"></i> <a href="/" class="btn btn-sm text-warning">Back</a>
            </small>
        </div>
        <!-- End Of Card Body -->
    </div>
    <!-- End Card Login Form Card -->

</body>
</html>