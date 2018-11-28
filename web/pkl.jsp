<%-- 
    Document   : panchkula
    Created on : Nov 22, 2018, 11:15:37 AM
    Author     : Spectre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
</style>
<body>
<div class="topnav" id="myTopnav">
  <a href="#Mycart">My Cart</a>
  <a href="logout.jsp">Logout</a>
  <a href="#Home">Home</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>


<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>  
<table cellpadding="30px"cellspacing="40px">
    <tr>
        <td><div class="card">
  <img src="panchkula/niks.jpg" style="width:100%">
  <h1>Nik Baker's</h1>
  <p><a href="menu1.jsp"><button>Menu</button></a></div></td>
        <td><div class="card">
  <img src="panchkula/eatstreet.jpg" style="width:100%">
  <h1>Eat Street</h1>
  <p><button>Menu</button></p>
</div></td>
        <td><div class="card">
  <img src="panchkula/big bro.jpg" style="width:100%">
  <h1>The Big Bro</h1>
  <p><button>Menu</button></p>
</div>
        <td><div class="card">
  <img src="panchkula/bakerslounge.jpg" style="width:100%">
  <h1>Bakers Lounge</h1>
  <p><button>Menu</button></p>
</div></td>
    </tr>
    <tr>
        <td><div class="card">
  <img src="panchkula/mcd.jpg" style="width:100%">
  <h1>Mc.Donalds</h1>
  <p><button>Menu</button></p>
</div></td>
        <td><div class="card">
  <img src="panchkula/katanidhaba.jpg" style="width:100%">
  <h1>Katani Dhaba</h1>
  <p><button>Menu</button></p>
</div></td>
        <td><div class="card">
  <img src="panchkula/lastcourse.jpg" style="width:100%">
  <h1>The Last Course</h1>
  <p><button>Menu</button></p>
</div></td>
        <td><div class="card">
  <img src="panchkula/superdonuts.jpg" style="width:100%">
  <h1>Super Donuts</h1>
  <p><button>Menu</button></p>
</div></td>
    </tr>
</table>

</body>
</html>






