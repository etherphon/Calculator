<%-- 
    Document   : RectangleResponse
    Created on : Sep 7, 2016, 9:42:34 PM
    Author     : jhedding
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
        <link href="style/calcStyle.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculated Rectangle Area</title>
    </head>
    <body>
        <%
            Object responseObj = request.getAttribute("rectArea");
            Object errorObj = request.getAttribute("errorMsg");
            String msg = "Unknown";
            
            if (responseObj != null) {
                msg = responseObj.toString();
            }
        
        %>
        <div id="rCalc">
            <h2>Area of this rectangle:&nbsp; <%= msg %></h2>
        </div>
    </body>
</html>
