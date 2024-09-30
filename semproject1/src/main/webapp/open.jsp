
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Train Reservation System</title>
    <!--<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #004d4d;
            color: white;
        }
        .navbar {
            background-color: #006666;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #00b3b3;
            color: black;
        }
        .welcome-section {
            text-align: center;
            background-image: url('https://i.ytimg.com/vi/KuDn-EWuZew/maxresdefault.jpg'); /* Replace with the train image */
            background-size: cover;
            height: 80vh;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .welcome-section h1 {
            font-size: 50px;
            margin: 0;
        }
        .footer {
            background-color: #003333;
            text-align: center;
            padding: 10px;
            color: white;
        }
    </style>-->
    
    <style>
body {
  background-image: url('img/train2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
    background-size: 1600px ;
}
</style>
    <%@include file="all_component/allcss.jsp" %>
    <%@include file="all_component/navbar.jsp"%>

</head>
<body>

    <!-- Navigation Bar -->
    

    <!-- Welcome Section -->
   <div class="welcome-section">
     <div class="we">
      <h1 style="color: #4CAF50; font-family: Arial, sans-serif; text-align: center; font-size: 36px; letter-spacing: 2px; background-color: #f0f0f0; padding: 20px;">
    WELCOME TO<br>
    <span style="color: #FF5722;">Train Reservation System</span>
</h1>


    

    <!-- Footer -->
   <%@include file="all_component/footer.jsp" %>
</div></div>
</body>
</html>
