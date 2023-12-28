<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./styles/addemployee.css" />
    <link rel="stylesheet" href="./styles/sidenavbar.css" />
  </head>
  <body>
    
    <%@ include file="sidenavbar.jsp" %>
    
    
    <div class="addemployee-container">
      <form class="add-employee-form" method="post" action="addemp" >
      
        <h2 style="font-size: 32px; margin-left: 50px;">Add Employee/Authority</h2>
        <hr style="width: 90%;"/>

        <table class="addemp_table">
          <tr>
            <td><label class="addemp_label">Name</label></td>
            <td><input type="text" class="addemp_input" placeholder="Name" name="name" required="required"/></td>
          </tr>
          <tr>
            <td><label class="addemp_label">Id</label></td>
            <td><input type="text" class="addemp_input" placeholder="Id" name="id" required="required"/></td>
          </tr>
          <tr>
            <td><label class="addemp_label">Email</label></td>
				<td><input type="email" class="addemp_input" placeholder="Email" name="email" required="required" pattern=".+@gmail\.com"  title="Please enter a Gmail email address ending with @gmail.com" /></td>
          </tr>
          <tr>
            <td><label class="addemp_label">Gender</label></td>
            <td>
              <select class="addemp_select" name="gender" required="required">
                <option value="">Select</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
              </select>
            </td>
          </tr>
          <tr>
            <td><label class="addemp_label">Contact Number</label></td>
			<td><input type="text" class="addemp_input" placeholder="Contact Number" name="contact_number" required="required" pattern="[6-9]\d{9}" title="Contact number must be 10 digits long and start with 6, 7, 8, or 9." /></td>
          </tr>
          <tr>
            <td><label class="addemp_label">Password</label></td>
			<td><input type="password" class="addemp_input" placeholder="Password" name="password" required="required" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" title="Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, and one digit." /></td>
          </tr>
          <tr>
            <td><label class="addemp_label">Employee Type</label></td>
            <td>
              <select class="addemp_select" name="emptype" required="required" >
                <option value="">Select</option>
                <option value="HR">HR</option>
                <option value="PRINCIPAL">Principal</option>
                <option value="HOD">HOD</option>
                <option value="EMPLOYEE">Employee</option>
              </select>
            </td>
          </tr>
           <tr>
            <td><label class="addemp_label">Department</label></td>
            <td>
              <select class="addemp_select" name="department" required="required" >
              
                <option value="">Select</option>
                <option value="CSE">CSE</option>
                <option value="ECE">ECE</option>
                <option value="Mech">Mechanical</option>
              </select>
            </td>
          </tr>
          <tr>
            <td><label class="addemp_label">Location</label></td>
            <td><input type="text" class="addemp_input" placeholder="Location" name="location" required="required" /></td>
          </tr>
        </table>

        <input type="submit" class="addemp_btn" value="Add" />
        <h4 style="margin-left: 175px;color: green">${message}</h4>
        
        
      </form>
    </div>
    


  </body>
</html>
