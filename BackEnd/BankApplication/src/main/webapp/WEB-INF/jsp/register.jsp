<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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


            <!-- Display Message -->
            <c:if test="${requestScope.passwordMisMatch != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.passwordMisMatch}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->
            <!-- Display Message -->
            <c:if test="${requestScope.success != null}">
                <div class="alert alert-success text-center border border-danger">
                    <b>${requestScope.success}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->



            <!-- Registration Form -->
            <form:form action="/register" class="reg-form" modelAttribute="registerUser">
                <!-- Row -->
                <div class="row">
                        <!-- First Name -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <form:input type="text" path="first_name" class="form-control form-control-lg" placeholder="Enter First Name"/>
                        <form:errors path="first_name" class="text-white bg-danger"/>
                    </div>
                    <!-- End Of From Group -->
                        <!-- Last Name -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <form:input type="text" path="last_name" class="form-control form-control-lg" placeholder="Enter Last Name"/>
                        <form:errors path="first_name" class="text-white bg-danger"/>
                    </div>
                    <!-- End Of From Group -->
                </div>
                    <!-- End Of Row -->
                        <!-- Email -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <form:input type="email" path="email" class="form-control form-control-lg" placeholder="Enter Email"/>
                        <form:errors path="first_name" class="text-white bg-danger"/>
                    </div>
                    <!-- End Of From Group -->
                        <!-- Row -->
                    <div class="row">
                        <!-- Password 1 -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <form:input type="password" path="password" class="form-control form-control-lg" placeholder="Enter Password"/>
                        <form:errors path="first_name" class="text-white bg-danger"/>
                    </div>
                    <!-- End Of From Group -->
                        <!-- Password 2 -->
                    <!-- From Group -->
                    <div class="form-group col">
                        <input type="password" name="confirm_password" class="form-control form-control-lg" placeholder="Confirm Password"/>
                        <small class="text-white bg-danger">${confirm_pass}</small>
                    </div>
                    <!-- End Of From Group -->
                </div>
                <!-- End Of Row -->

                    <!-- From Group -->
                <div class="form-group col">
                    <button class="btn btn-lg">Register</button>
                </div>
                <!-- End Of From Group -->
            </form:form>
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