<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Train Reservation System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .navbar {
            background-color: #006666;
        }
        .navbar a {
            color: white !important;
        }
        .table-container {
            margin: 20px auto;
            width: 90%;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Train Reservation System</a>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Search Train</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Login</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Sign Up</a></li>
            <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
        </ul>
    </nav>

    <div class="container table-container">
        <h2>Trains</h2>
        <form method="get" action="searchTrain">
            <div class="form-group">
                <select name="from" class="form-control">
    <option value="" disabled selected>Select From Station</option>
    <c:forEach var="station" items="${stationList}">
        <option value="${station}">${station}</option>
    </c:forEach>
</select>

            </div>
            <div class="form-group">
                <input type="text" name="to" class="form-control" placeholder="Search By To here...">
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </form>

        <table class="table table-bordered mt-4">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Train No</th>
                    <th>Rate</th>
                    <th>Date</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Available Seats</th>
                </tr>
            </thead>
            <tbody>
                <!-- Sample row, replace with dynamic data -->
                <c:forEach var="train" items="${trainList}">
                    <tr>
                        <td>${train.index}</td>
                        <td>${train.name}</td>
                        <td>${train.trainNo}</td>
                        <td>${train.rate}</td>
                        <td>${train.date}</td>
                        <td>${train.from}</td>
                        <td>${train.to}</td>
                        <td>${train.availableSeats}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
