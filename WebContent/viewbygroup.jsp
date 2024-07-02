<%@include file="header.html"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>View by Group</title>
    <style>
        /* Example CSS styles */
        body {
            background-color: #ffffee;
            margin: 10px;
            font-family: Arial, sans-serif;
        }
        h2 {
            text-align: center;
        }
        .center {
            text-align: center;
        }
        .form-container {
            width: 50%;
            margin: 0 auto; /* Center align the container */
        }
        .form-container .form-group {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .form-container select {
            width: 70%; /* Adjust width as needed */
            padding: 8px;
            text-align-last: center; /* Align text last (for Firefox) */
            -moz-text-align-last: center; /* Align text last (for old Firefox) */
        }
        .form-container input[type="submit"] {
            width: 25%; /* Adjust width as needed */
            padding: 8px;
            background-color: #e8eaeb;
            color: black;
            border: 1.0;
            cursor: pointer;
        }
        /* Additional styles as needed */
    </style>
</head>
<body>
    <h2>View by Group</h2>

    <div class="center form-container">
        <form method="post" action="/mysite/servlet/getallemaillistbygroup">
            <div class="form-group">
                <select name="groupid" id="groupid">
                    <option value="7" style="text-align: center;">Friends</option>
                    <option value="8">Personal</option>
                    <option value="9">Relatives</option>
                </select>
                <input type="submit" name="submit" value="Submit"/>
            </div>
        </form>
    </div>

</body>
</html>