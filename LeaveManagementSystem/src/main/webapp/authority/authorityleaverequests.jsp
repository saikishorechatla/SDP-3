<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="table-container closed" id="tableContainer">
      <h1>Employee Leave History</h1>

      <table class="leave-table">
        <tr>
          <th>Emp ID</th>
          <th>Name</th>
          <th>From Date</th>
          <th>To Date</th>
          <th>Reason</th>
          <th>Status</th>
        </tr>
        <tr>
          <td>101</td>
          <td>John Doe</td>
          <td>2023-08-10</td>
          <td>2023-08-15</td>
          <td>Vacation</td>
          <td>Approved</td>
        </tr>
        <tr>
          <td>102</td>
          <td>Jane Smith</td>
          <td>2023-07-20</td>
          <td>2023-07-22</td>
          <td>Sick Leave</td>
          <td>Rejected</td>
        </tr>
        <tr>
          <td>103</td>
          <td>Michael Johnson</td>
          <td>2023-09-05</td>
          <td>2023-09-10</td>
          <td>Family Emergency</td>
          <td>Pending</td>
        </tr>
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