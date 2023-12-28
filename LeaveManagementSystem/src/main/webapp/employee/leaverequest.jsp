<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>




<html>
<head>
    <link rel="stylesheet" href="styles/leaverequest.css" />
    <link rel="stylesheet" href ="./style/usersidebar.css" />
    <style type="text/css">
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
    </style>
</head>
<body>
    <%@include file="usersidebar.jsp" %>
    <div class="totalbody">
        <div class="container">
            <div class="image-container">
                <div class="border-line"></div>
                <img src="https://rapidcrews.com/wp-content/uploads/2019/09/Isometric_Dashboard.png" alt="Animated GIF" />
            </div>
            <div class="form-container">
                <h1>Leave Application Form</h1>
                <hr align="center" />
                <form action="applyleave" method="post" enctype="multipart/form-data" onsubmit="return checkFileSize()">
                    <div>
                        <label for="leaveType">Leave Type:</label>
                        <select class="leavereq_input" id="leaveType" name="leaveType">
                            <option value="casualleave">Casual Leave</option>
                            <option value="specialcasualleave">Special Casual Leave</option>
                            <option value="onduty">On Duty</option>
                            <option value="maternityleave">Maternity Leave</option>
                            <option value="paternityleave">Paternity Leave</option>
                            <option value="hospitalleave">Hospital Leave</option>
                            <option value="vacation">Vacation</option>
                            <option value="weekoff">Week Off</option>
                        </select>
                    </div>
                    <div class="date-container">
                        <div>
                            <label for="fromDate">From Date:</label>
                            <input class="leavereq_input" type="date" id="fromDate" name="fromDate" required  " />
                            
                        </div>
                        <span>to</span>
                        <div>
                            <label for="toDate">To Date:</label>
                            
                            <input class="leavereq_input" type="date" id="toDate" name="toDate" required  " />
                            
                        </div>
                    </div>
                    <div>
                        <label for="reason">Reason:</label>
                        <textarea class="leavereq_input" id="reason" name="reason" rows="4" cols="50" required></textarea>
                    </div>
                    <div class="radio-group">
                        <label>Leave Duration:</label>
                        <input class="leavereq_radio" type="radio" id="halfDay" name="duration" value="Half_Day" />
                        <label for="halfDay">Half Day</label>
                        <input class="leavereq_radio" type="radio" id="fullDay" name="duration" value="Full_Day" />
                        <label for="fullDay">Full Day</label>
                    </div>
                    <br />
                    <div>
                        <label for="letter">Upload Letter (Max 5MB):</label>
                        <input class="leavereq_input" type="file" id="letter" name="letter" accept=".pdf,.doc,.docx,.png,.img"  />
                        <span id="fileSizeError" style="color: red;"></span> <!-- Error message container -->
                    </div>
                    <br />
                    <input class="leavereq_submit" type="submit" />
                    <div id="submitMessage" class="submit-message">${message}</div>
                    
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    
    <script>
        function checkFileSize() {
            var fileInput = document.getElementById("letter");
            var maxSize = 5 * 1024 * 1024; // 5MB in bytes

            if (fileInput.files.length > 0) {
                var fileSize = fileInput.files[0].size;

                if (fileSize > maxSize) {
                    document.getElementById("fileSizeError").textContent = "File size exceeds the maximum limit of 5MB.";
                    fileInput.value = ''; // Reset the file input to clear the selected file
                    return false;
                }
            }

            return true;
        }
    </script>
    <script>
    const fromDateInput = document.getElementById("fromDate");
    const toDateInput = document.getElementById("toDate");

    // Get the current date in the format "YYYY-MM-DD"
    const currentDate = new Date().toISOString().split("T")[0];

    fromDateInput.min = currentDate; // Set the minimum date for "from date" to the current date

    fromDateInput.addEventListener("change", function () {
      toDateInput.min = fromDateInput.value; // Set the minimum date for "to date" based on "from date"
    });

    // Prevent form submission if the dates are invalid
    document.querySelector("form").addEventListener("submit", function (e) {
      if (fromDateInput.value > toDateInput.value) {
        alert("To date must be greater than or equal to from date.");
        e.preventDefault(); // Prevent form submission
      }
    });
</script>

    
   



    
</body>
</html>
