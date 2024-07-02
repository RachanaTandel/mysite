<%@ page import="assign.dbaccess.EMailAddressVOO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.html" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>View By Group ID</title>
</head>
<body bgcolor="#ffffee" leftmargin="10px" rightmargin="10px">
<center>
<h2>View By Group ID - ${groupID}</h2>
</center>
<center>
    <!-- Assuming 'emaillist' is set in the request scope by your servlet -->
    <table border="1">
        <thead>
            <tr>
                <th>#</th>
                <th>Email ID</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Home Phone</th>
                <th>Work Phone</th>
                <th>Mobile Phone</th>
                <th>Group ID</th>
                <!-- Add more headers as needed -->
            </tr>
        </thead>
        <tbody>
            <!-- Iterate over your email list and populate rows with counter -->
            <c:forEach items="${emailList}" var="email" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td> <!-- Loop counter starts from 0, so adding 1 to display 1-based index -->
                    <td>${email.eMailID}</td>
                    <td>${email.fName}</td>
                    <td>${email.mName}</td>
                    <td>${email.lName}</td>
                    <td>${email.hPhone}</td>
                    <td>${email.wPhone}</td>
                    <td>${email.mPhone}</td>
                    <td>${email.groupID}</td>
                    <!-- Replace 'eMailID' with actual properties of EMailAddressVOO -->
                </tr>
            </c:forEach>
        </tbody>
    </table>
</center>
</body>
</html>
<%@include file="footer.html"%>
