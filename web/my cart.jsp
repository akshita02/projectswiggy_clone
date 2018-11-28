<%-- 
    Document   : my cart
    Created on : Nov 26, 2018, 11:16:07 AM
    Author     : Spectre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
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
    </head>
    <body>
        <div class="card">
  <img src="panchkula/wsp.jpg" style="width:100%">
  <h1>White Sauce Pasta</h1>
  <p class="price">Rs.249</p>
  <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
</div>
    </body>
</html>
