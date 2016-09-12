<%-- 
    Document   : index
    Created on : Sep 7, 2016, 9:03:42 PM
    Author     : jhedding
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
        <link href="style/calcStyle.css" rel="stylesheet" type="text/css"/>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div id="rCalc">
            <h2>Rectangle Area Calculator</h2>
            <img class="img" id="rectImg" src="images/rect_36661_lg2.png" alt=""/>
            <form name="rectCalc" id="rectCalc" type="POST" action="calcthis?shape=RECT">
                <label for="rWidth">Width:&nbsp;</label><input type="text" id="rWidth" name="rWidth">
                <label for="rLength">Length:&nbsp;</label><input type="text" id="rLength" name="rLength">
                <input type="hidden" id="shape" name="shape" value="RECT">
                <input type="submit" value="Calculate" class="cButton">
            </form>
        </div>
        
        <div id="rCalc2">
            <h2>Inline Rectangle Area Calculator</h2>
            <img class="img" id="rectImg" src="images/rect_36661_lg2.png" alt=""/>
            <form name="rectCalc2" id="rectCalc2" type="POST" action="calcthis?shape=RECT2">
                <label for="rWidth2">Width:&nbsp;</label><input type="text" id="rWidth2" name="rWidth2">
                <label for="rLength2">Length:&nbsp;</label><input type="text" id="rLength2" name="rLength2">
                <input type="hidden" id="shape" name="shape" value="RECT2">
                <input type="submit" value="Calculate" class="cButton">
                <div class="resultBox">
                    <%
                        Object responseObj = request.getAttribute("rectArea2");
                        Object errorObj = request.getAttribute("errorMsg");
                        String msg = "Unknown";
            
                        if (responseObj != null) {
                            msg = responseObj.toString();
                        }
        
                    %>
                    <h2>Area of this rectangle:&nbsp; <span class="result"><%= msg %></span></h2>
                </div>
            </form>
        </div>
                
        <div id="cCalc">
            <h2>Circle Area Calculator</h2>
            <img class="img" id="circImg" src="images/circle-49_42943_lg.png" alt=""/>
            <form name="circCalc" id="circCalc" type="POST" action="calcthis?shape=CIRC">
                <label for="radius">Radius:&nbsp;</label><input type="text" id="radius" name="radius">
                <input type="hidden" id="shape" name="shape" value="CIRC">
                <input type="submit" value="Calculate" class="cButton">
                <div class="resultBox">
                    <%
                        Object responseObjCirc = request.getAttribute("circArea");
                        Object errorObj2 = request.getAttribute("errorMsg");
                        String msgCirc = "Unknown";
            
                        if (responseObjCirc != null) {
                            msgCirc = responseObjCirc.toString();
                        }
        
                    %>
                    <h2>Area of this circle:&nbsp; <span class="result"><%= msgCirc %></span></h2>
                </div>
            </form>
        </div>
                
        <div id="tCalc">
            <h2>Triangle Area Calculator</h2>
            <img class="img" id="triImg" src="images/triangle.png" alt=""/>
            <form name="triCalc" id="triCalc" type="POST" action="calcthis?shape=TRI">
                <label for="tBase">Base:&nbsp;</label><input type="text" id="tBase" name="tBase">
                <label for="tHeight">Height:&nbsp;</label><input type="text" id="tHeight" name="tHeight">
                <input type="hidden" id="shape" name="shape" value="TRI">
                <input type="submit" value="Calculate" class="cButton">
                <div class="resultBox">
                    <%
                        Object responseObjTri = request.getAttribute("triArea");
                        Object errorObj3 = request.getAttribute("errorMsg");
                        String msgTri = "Unknown";
            
                        if (responseObjTri != null) {
                            msgTri = responseObjTri.toString();
                        }
        
                    %>
                    <h2>Area of this triangle:&nbsp; <span class="result"><%= msgTri %></span></h2>
                </div>
            </form>
        </div>        
                    
                    
    </body>
</html>
