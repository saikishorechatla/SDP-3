<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1a73e8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .profile {
        	margin-top:300px;
        	margin-left:150px;
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
            animation: fadein 1s ease-in-out;
        }

        @keyframes fadein {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .profile-picture {
        margin-top:100px;
            border-radius: 50%;
            width: 175px;
            height: 175px;
            margin: 0 auto;
            background-image: url('your-profile-image.jpg'); <!-- Add your profile image URL here -->
            background-size: cover;
            background-position: center;
            background-color: #ccc;
        }
        .profile-info {
            margin: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            border-radius: 10px;
        }
        th {
            background-color: #f2f2f2;
        }
        td {
            padding: 10px;
            text-align: left;
        }
        td.label {
            text-align: right;
            font-weight: bold;
        }
        td.text-input {
            text-align: left;
        }
        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }
        
    </style>
        <link rel="stylesheet" href="./styles/sidenavbar.css" />
</head>
<body>
<%@ include file="usersidebar.jsp" %>
    <div class="profile">
     
        <div class="profile-picture">
        <img   src="${img}"/>
        </div>
        <div class="profile-info">
        ${msg}
        <input type="hidden" value="${emp.id}">
            <h1>Profile Information</h1>
            <table>
                <tr>
                    <th>Name</th>
                    <td class="text-input"><input type="text" value="${emp.name}"></td>
                </tr>
                <tr>
                    <th>EID</th>
                    <td class="text-input"><input type="text" value="${emp.eid}" readonly="readonly"></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td class="text-input"><input type="text" value="${emp.email}" readonly="readonly"></td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td class="text-input"><input type="text" value="${emp.gender}" readonly="readonly"></td>
                </tr>
                <tr>
                    <th>Role</th>
                    <td class="text-input"><input type="text" value="${emp.type}" readonly="readonly"></td>
                </tr>
                 <tr>
                    <th>Contact</th>
                    <td class="text-input"><input type="text" value="${emp.contactNumber}" ></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td class="text-input"><input type="password" value="${emp.password}" ></td>
                </tr>
                <tr>
                    <th>Department</th>
                    <td class="text-input"><input type="text" value="${emp.department}" readonly="readonly"></td>
                </tr>
                <tr>
                    <th>Location</th>
                    <td class="text-input"><input type="text" value="${emp.location}" ></td>
                </tr>
            </table>
        </div>
        <form action="/upload" method="post" enctype="multipart/form-data">
        <h1>Upload Profile Picture</h1>
        <table>
            <tr>
                <th>Profile Picture</th>
                <td class="text-input">
                    <input type="file" name="profilePicture">
                </td>
            </tr>
        </table>
        <input type="submit" value="Upload">
    </form>
    </div>
</body>
</html>