<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="styles/emplLeaveHistory.css" />
    <link rel="stylesheet" href="styles/sidenavbar.css" />
    <style>
        .leave-table .status-pending {
            background-color: yellow;
        }
        .leave-table .status-rejected {
            background-color: lightcoral;
        }
        .leave-table .status-accepted {
            background-color: lightgreen;
        }
        body {
            background-color: #1a73e8;
            font-family: monospace;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            width: 100%;
            height: 100%;
        }

        .table-container {
            text-align: center;
            overflow: hidden;
            max-height: 1000px; /* Adjust this value to match your content height */
            transition: max-height 1.5s ease-in-out;
            width: 90%;
            margin-left: 300px;
        }

        .table-container.closed {
            max-height: 0;
        }

        .leave-table {
            background-color: #ffffff;
            border-collapse: collapse;
            width: 90%;
            border-radius: 10px;
            overflow: hidden;
            border: 4px solid rgb(0, 0, 0);
            margin-top: 20px;
        }

        .leave-table th, .leave-table td {
            border: 1px solid rgb(87, 87, 87);
            padding: 12px;
            text-align: center;
            color: rgb(0, 0, 0);
            font-size: larger;
        }

        .leave-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <%@include file="sidenavbar.jsp" %>
    <div class="table-container closed" id="tableContainer">
        <h1>Employee List</h1>
        <table class="leave-table">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Type</th>
                <th>Contact Number</th>
                <th>Department</th>
                <th>Location</th>
            </tr>
            <c:forEach items="${employee}"  var="emp"> 
            <tr> 
				<td><c:out value="${emp.eid}" /></td> 
				<td><c:out value="${emp.name}" /></td> 
				<td><c:out value="${emp.email}" /></td>
				 <td><c:out value="${emp.gender}" /></td>
				<td><c:out value="${emp.type}" /></td> 
				<td><c:out value="${emp.contactNumber}" /></td> 
				<td><c:out value="${emp.department}" /></td> 
				<td><c:out value="${emp.location}" /></td> 
			</tr> 
</c:forEach> 
            <!-- Add more rows here -->
        </table>
    </div>

    <script>
        // Add the 'closed' class after a delay to trigger the animation
        setTimeout(function () {
            document.getElementById("tableContainer").classList.remove("closed");
        }, 500); // Delay in milliseconds
    </script>
</body>
</html>
