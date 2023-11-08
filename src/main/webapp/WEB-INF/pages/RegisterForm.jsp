<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
.container {
  margin: 0 auto;
  max-width: 600px;
}

.card-registration {
  border: 1px solid #ccc;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.card-body {
  padding: 40px;
}

.form-outline {
  position: relative;
  margin-bottom: 20px;
}

.form-control {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.form-label {
  position: absolute;
  top: 12px;
  left: 15px;
  color: #999;
  font-size: 16px;
  pointer-events: none;
  transition: 0.2s ease all;
}

.form-control:focus + .form-label,
.form-control:not(:placeholder-shown) + .form-label {
  top: -12px;
  left: 10px;
  font-size: 14px;
  color: #ff6600;
}

.select {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #fff;
  color: #333;
}

.btn {
  padding: 12px 24px;
  font-size: 18px;
  border-radius: 5px;
}

.btn-light {
  background-color: #f8f9fa;
  color: #333;
  border: 1px solid #ccc;
}

.btn-warning {
  background-color: #ffc107;
  color: #fff;
  border: 1px solid #ffc107;
}
/* ... (previous CSS styles) ... */

.form-check-input {
  margin-top: 0; /* Adjust the top margin for radio buttons */
}

.form-select {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 5px;
}
</style>
</head>
<body>


<center>
<form action="ProcessRegisterForm" method="GET">
<div class="container">
<section class="vh-100 gradient-custom bg-secondary">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">

            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Student registration form</h3>
                  <br> <br>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <label class="form-label" for="form3Example1m">First name</label>
                      <input type="text" name="firstname" />
                    </div>
                  </div>
                    <br> <br>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">

                      <label class="form-label" for="form3Example1n">Last name</label>
                      <input type="text" name="lastname" />
                    </div>
                  </div>
                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
  <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
                    <h4>Gender: </h4>

                    <div class="form-check form-check-inline mb-0 me-4">
                      <input class="form-check-input" type="radio" name="gender" id="femaleGender" value="female">
                      <label class="form-check-label" for="femaleGender">Female</label>
                    </div>

                    <div class="form-check form-check-inline mb-0 me-4">
                      <input class="form-check-input" type="radio" name="gender" id="maleGender" value="male">
                      <label class="form-check-label" for="maleGender">Male</label>
                    </div>

                    <div class="form-check form-check-inline mb-0">
                      <input class="form-check-input" type="radio" name="gender" id="otherGender" value="othergender">
                      <label class="form-check-label" for="otherGender">Other</label>
                    </div>
                  </div>
                  <br>
                  <div class="row">
                    <div class="col-md-6 mb-4">
                      <select class="form-select" name="state">
                        <option value="1" >State</option>
                        <option value="Tamilnadu" >Tamilnadu</option>
                        <option value="Kerala" >Kerala</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                      </select>
                    </div>
                    <br>
                    <div class="col-md-6 mb-4">
                      <select class="form-select" name="city">
                        <option value="1" >City</option>
                        <option value="Chennai">Chennai</option>
                        <option value="Madurai" >Madurai</option>
                        <option value="Theni">Theni</option>
                      </select>
                    </div>
                  </div>
                  <br> <br>
                               <div class="form-outline mb-4">
                                  <label class="form-label" for="password">Password</label>
                                  <input type="password" name="password" />
                                </div>
                                <br>
                <div class="d-flex justify-content-end pt-3">
                  <input type="submit" value="submit"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</div>
</form>
                  </center>
</body>
</html>