<%-- 
    Document   : 2nd
    Created on : Nov 25, 2018, 4:52:28 PM
    Author     : Spectre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
    height: 100%;
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("hero.png");
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: orange;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: orange;
}
.mx {
    margin-top: 0px;
    margin-bottom: 0px;
    margin-right: 50px;
    margin-left: 180px;
    }
</style>
</head>
<body>

<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:50px">Discover the best restaurants delivering at your doorstep</h1>
    <h2>Hurry! Order fast</h2>
    
        <form action="select.jsp" method="post">
            <CENTER>
                <select name="xyzz">
    <option value="0">Select location</option>
    <option value="pkl.jsp">Panchkula</option>
    <option value="2">Chandigarh</option>
    <option value="3">Zirakpur</option>
    <option value="4">Mohali</option>
</select>
        <input type="submit" value="Show Restraunts">
        </form>
    
  </div>
</div><br><br>
    <h3 style="text-align:center">Offered with exclusive range of restaurants!</h3><br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="v0pl_sqp.jpg">&nbsp&nbsp&nbsp&nbsp&nbsp<img src="w5ya_sqp.jpg">&nbsp&nbsp&nbsp&nbsp&nbsp<img src="h8mt_sqp.jpg">&nbsp&nbsp&nbsp&nbsp&nbsp
<img src="h5oa_sqp.jpg">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img src="no_pic_logo.png">&nbsp&nbsp&nbsp&nbsp&nbsp<img src="r1my_sqp.jpg">&nbsp&nbsp&nbsp&nbsp&nbsp<img src="g2fx_sqp.jpg"<br><br>
            <h4 style="text-align:center">Cuisines</centre></h4>
            <table cellspacing="20" align="center">
                <tr><td>American</td>
            <td>Andhra</td>
            <td>Arabic</td></tr>
                <tr><td>Bengali</td>
            <td>Biryani</td>
            <td>Breakfast</td>
                <tr>
                    <td>Burgers</td>
            <td>Cakes-Bakery</td>
            <td>Chinese</td></tr>
                <tr><td>Continental</td>
                <td>Desserts</td>
                <td>European</td></tr>
    <tr><td>Fast Food</td>
    <td>Healthy</td>
    <td>Hyderabadi</td></tr>
    <tr><td>Ice creams</td>
    <td>Italian</td>
    <td>Juices</td></tr>

            </table>

</body>
</html>
