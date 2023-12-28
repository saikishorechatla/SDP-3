<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  </head>
  <body>
  <%@ include file="authoritysidebar.jsp" %>
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
          <h2 class="topic">Employee Name</h2>
        </div>

       <h1><i class="bi bi-credit-card-2-front"></i></h1>
      </div>

      <div class="box box4">
        <div class="text">
          <h2 class="topic-heading">10</h2>
          <h2 class="topic">Accepted Requests</h2>
        </div>

    <h1><i class="bi bi-patch-check"></i></h1>

      </div>

      <div class="box box3">
        <div class="text">
          <h2 class="topic-heading">22</h2>
          <h2 class="topic">Total Requests</h2>
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
                <a href="/leaverequest.html" class="admincard_item_link">
                  <div class="admincard_item_bg"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="static/img/leaverequest.png"
                            class="admincard_item_icon"
                            width="100px"
                          />
                        </td>
                        <td>Leave Requests</td>
                      </tr>
                    </table>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="admincard_item">
                <a href="/empleavehistory.html" class="admincard_item_link">
                  <div class="admincard_item_bg1"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="static/img/leave history.png"
                            class="admincard_item_icon"
                            width="100px"
                          />
                        </td>
                        <td>Request History</td>
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
  </body>
</html>
