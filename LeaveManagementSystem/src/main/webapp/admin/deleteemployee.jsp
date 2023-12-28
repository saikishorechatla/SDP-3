<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="styles/emplLeaveHistory.css" />
    <link rel="stylesheet" href="styles/sidenavbar.css" />
    <style>
    @charset "UTF-8";
.side_sidebar {
  font-family: monospace;
  height: 100%;
  width: 250px;
  position: fixed;
  top: 0;
  left: 0;
  background: #ffffff;
  color: rgb(0, 0, 0);
  font-weight: bolder;
}

.side_sidebar-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 15px;
  color: rgb(0, 0, 0);
}

.side_logo {
  font-size: 24px;
  font-weight: bold;
}

.side_nav-link {
  padding: 15px;
  text-align: left;
  text-decoration: none;
  font-size: 20px;
  color: rgb(0, 0, 0);
  display: flex;
  align-items: center;
}

.side_nav-link i {
  min-width: 40px;
  text-align: center;
}

.side_nav-link .link-text {
  margin-left: 10px;
}

.side_nav-link:hover {
  transform: translateY(-1px);
  box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
  padding: 12px;
  border: 2px solid black;
  border-radius: 10px;
  background-color: #1a73e8;
  color: rgb(255, 255, 255);
}

.content {
  left: 250px;
  padding: 20px;
  position: relative;
  max-width: fit-content;
}

@media (max-width: 768px) {
  
  .side_logo_mobile {
    padding: 10px 0;
    display: inline-block;
    margin-right: auto;
  }

  .collapse-btn {
    display: block;
    position: absolute;
    top: 10px;
    right: 10px;
  }

  /* Adding colors from desktop view */
  .navbar {
    background-color: #ffffff;
  }

  .image {
    width: 50px;
  }

  .navbar-light .navbar-toggler-icon:focus {
    outline: none;
  }

  .navbar-nav .nav-link {
    color: #000;
  }

  .navbar-nav .nav-link:hover {
    color: #fff;
    background-color: #1a73e8;
  }
}
    
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
     <div class="side_sidebar d-none d-md-block">
      <div class="side_sidebar-header">
        <span class="side_logo">
          <a href="admin"
            ><img
              class="image"
              src="static/img/logo.png"
              width="200px"
              height="100px"
              alt="logo" /></a
        ></span>
      </div>
      <a href="addemployee" class="side_nav-link">
        <i class="bi bi-person-plus-fill"></i>
        <span class="link-text">Add Staff</span>
      </a>
      <a href="deleteemployee" class="side_nav-link">
        <i class="bi bi-person-x-fill"></i>
        <span class="link-text">Delete Staff</span>
      </a>
      <a href="/" class="side_nav-link">
        <i class="bi bi-box-arrow-right"></i>
        <span class="link-text">Logout</span>
      </a>
    </div>
    <div class="table-container closed" id="tableContainer">
        <h1>Employee List</h1>
        <font color="white">${message}</font><br>
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
                <th>Action</th>
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
				<td>
					<a href='<c:url value="deleteemployeebyid/${emp.id}"></c:url>'>Delete</a>
				</td> 
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
