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
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./styles/admin.css" />
    
  </head>
  <body>
  <%@ include file="sidenavbar.jsp" %>
  
    <div class="admin-total-container">
      <center>
        <div class="index_span">
          <div class="box box1">
            <div class="text">
              <h2 class="topic-heading">${totalemps}</h2>
              <h2 class="topic">Total Employees</h2>
            </div>

            <img src= https://clipground.com/images/staff-png.png alt="Views">
          </div>

          <div class="box box2">
            <div class="text">
              <h2 class="topic-heading">${authcount}</h2>
              <h2 class="topic">Total Authorities</h2>
            </div>

            <img
              src="https://th.bing.com/th/id/R.85147672d116a2a5de86db087f61510f?rik=3owjqaIC7fADYg&riu=http%3A%2F%2Fcdn.onlinewebfonts.com%2Fsvg%2Fimg_365292.png&ehk=zlNTnsTlMeZFo5dRpfAWMJuL4IF3hJaP1SO%2BcP5WKiM%3D&risl=&pid=ImgRaw&r=0"
              alt="likes"
            />
          </div>

          <div class="box box3">
            <div class="text">
              <h2 class="topic-heading">320</h2>
              <h2 class="topic">Rejected Requests</h2>
            </div>

            <img
              src="https://static.thenounproject.com/png/540038-200.png"
              alt="comments"
            />
          </div>

          <div class="box box4">
            <div class="text">
              <h2 class="topic-heading">70</h2>
              <h2 class="topic">Accepted Requests</h2>
            </div>

      <h1>  <i class="bi bi-check-circle" ></i></h1>
      </div>
    </div>
  </center>
  
        <div class="card-container"> 
          <h2 style="font-size:25px; font-weight: 900;">Quick Routes</h2>
          <hr />
          <div class="row">
            <div class="col-md-6">
              <div class="admincard_item">
                <a href="addemployee" class="admincard_item_link">
                  <div class="admincard_item_bg"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="https://th.bing.com/th/id/R.e140c6cc3421b6ac6e06c1a96077821b?rik=p1%2f%2ftydUFNbqaA&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_83907.png&ehk=ojO12jTnrc%2bW%2fjY4%2bWdAhqmRbWhiwIsu11Q8m5yMFo0%3d&risl=&pid=ImgRaw&r=0"
                            class="admincard_item_icon"
                            width="100px"
                          />
                        </td>
                        <td>Add Employee</td>
                      </tr>
                    </table>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="admincard_item">
                <a href="authorityleaverequests" class="admincard_item_link">
                  <div class="admincard_item_bg1"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="https://img.icons8.com/?size=512&id=86479&format=png"
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
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="admincard_item">
                <a href="employeelist" class="admincard_item_link">
                  <div class="admincard_item_bg2"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="https://th.bing.com/th/id/R.31d18e02c3ee6a335fb2dbeace6797ca?rik=lNdjVrMssd%2b5cQ&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fdownload_549450.png&ehk=Ii3hrfX4OxhscVpBPnkJO8myg0B1p1w4Qwi13l9r3mk%3d&risl=&pid=ImgRaw&r=0"
                            class="admincard_item_icon"
                            width="100px"
                          />
                        </td>
                        <td>Employee List</td>
                      </tr>
                    </table>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="admincard_item">
                <a href="addemployee" class="admincard_item_link">
                  <div class="admincard_item_bg3"></div>
                  <div class="admincard_item_title">
                    <table>
                      <tr>
                        <td>
                          <img
                            src="https://cdn0.iconfinder.com/data/icons/employee-and-business-fill/512/Office_Staff-1024.png"
                            class="admincard_item_icon"
                            width="100px"
                          />
                        </td>
                        <td>Add Authority</td>
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
