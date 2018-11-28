<%-- 
    Document   : menu1
    Created on : Nov 25, 2018, 9:51:29 PM
    Author     : Spectre
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page import="Beans.MenuBean"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        System.err.println(e);
    }

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
    java.util.List<MenuBean> list = new LinkedList<MenuBean>();
    ResultSet rs = con.createStatement().executeQuery("SELECT * FROM menu");
    while (rs.next()) {
        list.add(new MenuBean(rs.getString("item"), rs.getInt("price"), rs.getString("path")));
    }

%>
<!DOCTYPE html>
<html>
    <head>
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
    </head>
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
            <%        for (int i = 0; i < list.size(); i += 3) {
            %>
            <tr>
                <td><div class="card">
                        <img src="<%=list.get(i + 0).getPath()%>" style="width:100%">
                        <h1><%=list.get(i + 0).getItem()%></h1>
                        <p class="price"><%=list.get(i + 0).getPrice()%></p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td>
                    <% if ((i+1) < list.size()) { %>
                <td><div class="card">
                        <img src="<%=list.get(i + 1).getPath()%>" style="width:100%">
                        <h1><%=list.get(i + 1).getItem()%></h1>
                        <p class="price"><%=list.get(i + 1).getPrice()%></p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td><%}%>
                    <% if ((i+2) < list.size()) { %>
                <td><div class="card">
                        <img src="<%=list.get(i + 2).getPath()%>" style="width:100%">
                        <h1><%=list.get(i + 2).getItem()%></h1>
                        <p class="price"><%=list.get(i + 2).getPrice()%></p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td><%}%>

            </tr>
            <%}%>
<!--            <tr>
                <td><div class="card">
                        <img src="panchkula/wsp.jpg" style="width:100%">
                        <h1>White Sauce Pasta</h1>
                        <p class="price">Rs.299</p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td>
                <td><div class="card">
                        <img src="panchkula/bgp.jpg" style="width:100%">
                        <h1>Belgium Choco Pudding</h1>
                        <p class="price">Rs.229</p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td>
                <td><div class="card">
                        <img src="panchkula/sh2.jpg" style="width:100%">
                        <h1>Brownie Fudge</h1>
                        <p class="price">Rs.299</p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td>
            </tr>
            <tr>
                <td><div class="card">
                        <img src="panchkula/sh1.jpg" style="width:100%">
                        <h1>Oreo shake</h1>
                        <p class="price">Rs.299</p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td>
                <td><div class="card">
                        <img src="panchkula/pizza.jpg" style="width:100%">
                        <h1>Veggie pizza</h1>
                        <p class="price">Rs.399</p>
                        <p><a href="my cart.jsp"><button>Add to Cart</button></a></p>
                    </div></td>-->

            </tr>

    </body>
</html>

