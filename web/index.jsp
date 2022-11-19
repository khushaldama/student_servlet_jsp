<%-- 
    Document   : index
    Created on : 12 Nov, 2022, 9:33:38 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form action="studentServlet" method="post" style="border: 2px solid black; margin-top: 150px;width: 30%;">
            <h2><label>Student Details</label></h2>
            <label>Student Id:</label>
            <input type="text" placeholder="enter student id" name="sid">
            <br><br>
            <label>Student Name:</label>
            <input type="text" placeholder="enter student name" name="sname">
            <br><br>
            <label>Student Marks1:</label>
            <input type="text" placeholder="enter student marks1" name="smr1">
            <br><br>
            <label>Student Marks2:</label>
            <input type="text" placeholder="enter student marks2" name="smr2">
            <br><br>
            <label>Student Marks3:</label>
            <input type="text" placeholder="enter student marks3" name="smr3">
            <br><br>
            <input type="submit" value="Submit" name="btns">
            <br><br>
        </form>
    </center>
</body>
</html>
