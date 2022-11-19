<%-- 
    Document   : totalmarks
    Created on : 12 Nov, 2022, 10:02:36 PM
    Author     : admin
--%>
<%@page import="java.sql.*"%> 
<%@page import="java.io.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TOTAL MARKS</title>
    </head>
    <body>
    <center>
        <h1>Total Marks</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr style="text-align: center"><b>
                <th scope="col">Student Id &nbsp;&nbsp;</th>
                <th scope="col">Student Name &nbsp;&nbsp;</th>
                <th scope="col">Student Total Marks &nbsp;&nbsp;</th>
                <th scope="col">Student Percentage &nbsp;&nbsp;</th>

                </tr>
                </thead>
                <tbody>
                    <%
                        try {

                            int id = Integer.parseInt(request.getParameter("id"));
                            int m1 = Integer.parseInt(request.getParameter("m1"));
                            int m2 = Integer.parseInt(request.getParameter("m2"));
                            int m3 = Integer.parseInt(request.getParameter("m3"));
                            int total = m1 + m2 + m3;
                            int per = total/3;
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/052", "root", "");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from student where id='" + id + "'");

                            while (rs.next()) {

                                /*out.print("<h3>" + rs.getInt("id") + "</h3");
                    out.print("<h3>" + rs.getString("name") + "</h3>");
                    out.print("<h3>" + rs.getInt("fuel") + "</h3>");
                    out.print("<h3>" + rs.getInt("milage") + "</h3>");
                                 */%>
                    <tr style="text-align: center">
                        <th scope="row"><b><% out.println(rs.getInt("id")); %></b></th>
                        <td scope="row"><b><% out.println(rs.getString("name")); %></b></td>
                        <td scope="row"><b><% out.println(total); %></b></td>
                        <td scope="row"><b><% out.println(per); %></b></td>
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
