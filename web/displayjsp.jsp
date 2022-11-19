<%-- 
    Document   : displayjsp
    Created on : 12 Nov, 2022, 9:49:27 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%> 
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display</title>
    </head>
    <body>
    <center>
        <h2>Display all records</h2>
        <table class="table">
            <thead class="thead-dark">
                <tr style="text-align: center"><b>
                <th scope="col">Student Id &nbsp;&nbsp;</th>
                <th scope="col">Student Name &nbsp;&nbsp;</th>
                <th scope="col">Student Marks1 &nbsp;&nbsp;</th>
                <th scope="col">Student Marks2 &nbsp;&nbsp;</th>
                <th scope="col">Student Marks3 &nbsp;&nbsp;</th>
                <th scope="col">Student Total Marks and Percentage &nbsp;&nbsp;</th>
                
                </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/052", "root", "");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from student");

                            while (rs.next()) {

                                /*out.print("<h3>" + rs.getInt("id") + "</h3");
                    out.print("<h3>" + rs.getString("name") + "</h3>");
                    out.print("<h3>" + rs.getInt("fuel") + "</h3>");
                    out.print("<h3>" + rs.getInt("milage") + "</h3>");
                                 */%>
                    <tr style="text-align: center">
                        <th scope="row"><b><% out.println(rs.getInt("id")); %></b></th>
                        <td scope="row"><b><% out.println(rs.getString("name")); %></b></td>
                        <td scope="row"><b><% out.println(rs.getInt("mark1")); %></b></td>
                        <td scope="row"><b><% out.println(rs.getInt("mark2"));%></b></td>
                        <td scope="row"><b><% out.println(rs.getInt("mark3"));%></b></td>
                        <td scope="row"><a href="totalmarks.jsp?id=<%=rs.getInt("id")%>&m1=<%=rs.getInt("mark1")%>&m2=<%=rs.getInt("mark2")%>&m3=<%=rs.getInt("mark3")%>">Total Marks </a></td>
                    </tr> 
                    <%              }
                        } catch (Exception e) {
                            e.printStackTrace();
                            //out.println(e);

                        }
                    %>
                </tbody>
        </table>
    </center>
    </body>
</html>
