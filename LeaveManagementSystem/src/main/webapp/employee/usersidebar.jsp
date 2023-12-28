<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href ="./style/usersidebar.css" />
</head>
<body>
	<div class="side_sidebar">
      <div class="side_sidebar-header">
      <a href="home">
        <span class="side_logo"> <img src="static/img/logo.png" width="200px" height="100px" alt="logo" /></span>
        </a>
      </div>
      <a href="leaveapplication" class="side_nav-link">
        <i class="bi bi-person-plus-fill"></i>
        <span class="link-text">Apply Leave</span>
      </a>
      <a href="empleavehistory" class="side_nav-link">
        <i class="bi bi-person-fill-gear"></i>
        <span class="link-text">Leave History</span>
      </a>
      
      <a href="profile" class="side_nav-link">
        <i class="bi bi-person-square"></i>
        <span class="link-text">Profile</span>
      </a>
      
      <a href="emplogout" class="side_nav-link">
        <i class="bi bi-box-arrow-right"></i>
        <span class="link-text">Logout</span>
      </a>
    </div>
</body>
</html>