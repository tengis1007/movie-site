<?php 
include 'db.php';
session_start();
if (isset($_SESSION['loginsuccesfull'])) {}
	else{
		echo "<script>alert('You Are not Logged in');window.location.href='login.php';</script>";
		
	}

 ?>
<head>
<link rel="shortcut icon" href="./image/favicon.svg" type="img/svg+xml">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 	<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a href="index.php" class="logo">
  <img src="./image/logo.svg" class="logo">
  <h2 class="hero-subtitle" style="color:yellow;">Filmlane</h2>
    </a>
   
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
    
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Нүүр</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="registerAdmin.php">Админ бүртгэх</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminList.php">Админы жагсаалт</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="movieList.php">Кино</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="genreList.php">Төрөл</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.php">Холбоо барих хүсэлт</a>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-danger" href="logout.php">Гарах</a>
      </ul>
    </div>
  </div>
</nav>
</body>




<style>
body {
  margin: 0;
   
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #140d14;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #140d14;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>