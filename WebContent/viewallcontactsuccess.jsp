<%@page import="assign.dbaccess.EMailAddressVOO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.html"%>
<html>
<head>
<title>View All Contacts</title>
</head>

<body bgcolor="#ffffee" leftmargin="10px" rightmargin="10px">

<center>
<h2>View All Contacts</h2>
</center>
<!--Body: view all information-->
<center>
<jsp:useBean id="emailVO" class="assign.dbaccess.EMailAddressVOO"
			scope="request"></jsp:useBean>
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
            <!-- Iterate over your email list and populate rows -->
            <c:forEach items="${emaillist}" var="email" varStatus="loop">
                <tr>
                	<td>${loop.index + 1}</td>
                    <td>${email.eMailID}</td>
                    <td>${email.fName}</td>
                    <td>${email.mName}</td>
                    <td>${email.lName}</td>
                    <td>${email.hPhone}</td>
                    <td>${email.wPhone}</td>
                    <td>${email.mPhone}</td>
                    <td>${email.groupID}</td>
                    <!-- Replace 'eMailID' and 'emailAddress' with actual properties -->
                </tr>
            </c:forEach>
        </tbody>
    </table>
</center>
</body>

	

</html>
<%@include file="footer.html"%>

</body>
