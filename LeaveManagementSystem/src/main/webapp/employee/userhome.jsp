<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.18.0/font/bootstrap-icons.css"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="./styles/userhome.css" />
    <link rel="stylesheet" href="./styles/sidenavbar.css" />
    <style type="text/css">
    	 .custom-alert {
      border: 1px solid;
      margin: 10px;
      padding: 15px 20px;
      border-radius: 5px;
      font-weight: bold;
      text-align: center;
    }

    .success {
      background-color: #4CAF50;
      color: white;
    }

    .warning {
      background-color: #f0ad4e;
      color: white;
    }

    .error {
      background-color: #d9534f;
      color: white;
    }
    
    </style>
   <script type="text/javascript"> 
        window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
    </script>
  </head>
  <body>
   
   <%@ include file="usersidebar.jsp" %>
   
    <div class="admin-total-container" >
    <center>
    <div class="index_span">
      <div class="box box1">
        <div class="text">
        
          <h2 class="topic-heading">${eid}</h2>
          <h2 class="topic">Employee ID</h2>
        </div>

       <h1> <i class="bi bi-file-person"></i></h1>
      </div>

      <div class="box box2">
        <div class="text">
            <h2 class="topic-heading">
  <script>
    var employeeName = "${name}";
    if (employeeName.length > 9) {
      document.write(employeeName.substring(0, 9) + "...");
    } else {
      document.write(employeeName);
    }
  </script>
</h2>
            </h2>
          <h2 class="topic">Employee Name</h2>
        </div>

       <h1><i class="bi bi-credit-card-2-front"></i></h1>
      </div>

      <div class="box box4">
        <div class="text">
          <h2 class="topic-heading">${dept}</h2>
          <h2 class="topic">Department</h2>
        </div>

    <h1><i class="bi bi-patch-check"></i></h1>

      </div>

      <div class="box box3">
        <div class="text">
          <h2 class="topic-heading">${requests}</h2>
          <h2 class="topic">No Of Requests</h2>
        </div>

       <h1><i class="bi bi-exclamation-triangle"></i></h1>
      </div>

    </div>
  </center>
  
        <div class="card-container"> 
          <h2 style="font-size:25px; font-weight: 900;">Quick Routes</h2>
          <hr />
          <div class="row">
            <div class="col-md-6">
              <div class="admincard_item">
                <a href="leaveapplication" class="admincard_item_link">
                  <div class="admincard_item_bg"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="https://th.bing.com/th/id/R.1e23898cf89a0bcfe10b4614f4f58f05?rik=xqF84HSDGXSJrQ&riu=http%3A%2F%2Fcdn.onlinewebfonts.com%2Fsvg%2Fimg_348030.png&ehk=H2PTeUepCfn3IOiCMmZVQdA3bGVsAYFSpND3pNs1jyE%3D&risl=&pid=ImgRaw&r=0"
                            class="admincard_item_icon"
                            width="100px"
                          />
                        </td>
                        <td>Apply Leave</td>
                      </tr>
                    </table>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="admincard_item">
                <a href="empleavehistory" class="admincard_item_link">
                  <div class="admincard_item_bg1"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="./static/img/leavehistory.png"
                            class="admincard_item_icon"
                            width="100px"
                          />
                        </td>
                        <td>Leave History</td>
                      </tr>
                    </table>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.cccc9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../functionalities/session.js"></script>
    
  </body>
</html>
