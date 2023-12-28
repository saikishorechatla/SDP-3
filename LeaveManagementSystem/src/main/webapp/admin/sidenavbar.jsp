<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <title>Sidebar Example</title>
    <link rel="stylesheet" href="./styles/sidenavbar.css" />
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

    <!-- Navbar (for mobile view) -->
    <nav
      class="sidenav_mob_navbar navbar navbar-expand-md navbar-light bg-light d-md-none"
    >
      <div class="sidenav_mob_container container">
        <span class="side_logo_mobile">
          <img src="static/img/logo.png" alt="logo" width="50px" />
        </span>
        <button
          class="sidenav_mob_navtog navbar-toggler ml-auto"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNav"
        >
          <span class="sidenav_mob_togicon navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="sidenav_mob_navitem nav-item">
              <a class="sidenav_mob_navlink nav-link" href="addemployee"
                >Add Staff</a
              >
            </li>
            <li class="sidenav_mob_navitem nav-item">
              <a
                class="sidenav_mob_navlink nav-link"
                href="/empleavehistory.html"
                >Update Staff</a
              >
            </li>
            <li class="sidenav_mob_navitem nav-item">
              <a
                class="sidenav_mob_navlink nav-link"
                href="/empleavehistory.html"
                >Delete Staff</a
              >
            </li>
            <li class="sidenav_mob_navitem nav-item">
              <a
                class="sidenav_mob_navlink nav-link"
                href="/"
                >Logout</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </body>
</html>
