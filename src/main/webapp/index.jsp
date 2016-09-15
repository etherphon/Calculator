<%-- 
    Document   : index
    Created on : Sep 7, 2016, 9:03:42 PM
    Author     : jhedding
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="style/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="scripts/bootstrap.min.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
        <link href="style/calcStyle.css" rel="stylesheet" type="text/css"/>
        <title>JAH - Calculators</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="col-md-2"></div>
        <div class="col-md-8">
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
            <h2>In-line Rectangle Area Calculator</h2>
            <img class="img" id="rectImg" src="images/rect_36661_lg2.png" alt=""/>
            <form name="rectCalc2" id="rectCalc2" type="POST" action="calcthis?shape=RECT2">
                <label for="rWidth2">Width:&nbsp;</label><input type="text" id="rWidth2" name="rWidth2">
                <label for="rLength2">Length:&nbsp;</label><input type="text" id="rLength2" name="rLength2">
                <input type="hidden" id="shape" name="shape" value="RECT2">
                <input type="submit" value="Calculate" class="cButton">
                <div class="resultBox">                
                    <h3>Area of this rectangle:&nbsp; <span class="result">${rectArea2}</span></h3>
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
                    <h3>Area of this circle:&nbsp; <span class="result">${circArea}</span></h3>
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
                    <h3>Area of this triangle:&nbsp; <span class="result">${triArea}</span></h3>
                </div>
            </form>
        </div>
        </div>
        <div class="col-md-2"></div>
    </body>
</html>
