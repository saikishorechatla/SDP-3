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
            margin-left: 350px;
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
    <%@include file="usersidebar.jsp" %>
    <div class="table-container closed" id="tableContainer">
        <h1>Employee Leave History</h1>
        <table class="leave-table">
            <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Leave Type</th>
                <th>Leave From Date</th>
                <th>Leave To Date</th>
                <th>Leave Reason</th>
                <th>Leave Duration</th>
                <th>Leave Status</th>
            </tr>
            <c:forEach items="${object}" var="item">
                <tr>
                    <td>${item[0]}</td>
                    <td>${item[1]}</td>
                    <td>${item[2]}</td>
                    <td>${item[3]}</td>
                    <td>${item[4]}</td>
                    <td>${item[5]}</td>
                    <td>${item[6]}</td>
                    <td class="status-${item[7]}">${item[7]}</td>
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
