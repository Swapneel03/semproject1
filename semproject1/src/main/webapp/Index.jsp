<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body style ="background-color:#f0f1f2 ">
<%@include file="all_component/navbar.jsp" %>

<div class="container">
       <div class="row mt-2">
              <div class="col-md-4 offset-md-4">
                    <div class="card">
                      <div class="card-body">
                      <h3 class="text-center">LOGIN PAGE</h3>
                      <form action="Userservlet" method="POST">
                      <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Enter your full Name</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
                      
                       </div>
                      <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Password</label>
                          <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  required="required">
                      
                       </div>
                       <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Phone Number</label>
                          <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
                      
                       </div>
                      <div class="mb-3">
                      <label for="exampleInputPassword1" class="form-label">Email</label>
                      <input type="wmail" class="form-control" id="exampleInputPassword1" required="required">
                       </div>
                    <div class="mb-3 form-check"> 
                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                       <label class="form-check-label" for="exampleCheck1">Check me out</label>
                     </div>
                   <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                        </div>
                    </div>
                 </div>
          </div>
    </div>




<%@include file="all_component/footer.jsp" %>
</body>
</html>
   <!--   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
            padding-top: 50px;
            background-color: #f4f4f4;
           background-image: url('https://images.unsplash.com/photo-1535535112387-56ffe8db21ff?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHRyYWlufGVufDB8fDB8fHww');
           background-size: cover;
    background-repeat: no-repeat;
        }
        h2 {
            text-align: center;
        }
        form {
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            background-color: #f0f0f0;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>-->

