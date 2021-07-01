<%-- 
    Document   : display
    Created on : 29-Jun-2021, 10:55:18
    Author     : yoliv
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="com.tta.model.MyConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Student</title>
    </head>
    <body>
        
        <!----Using jsp tag : you can include "master.html" page--->
        <jsp:include page="master.html"/>
        
        <center>
            <h2>Display Student</h2>

            <!--DB code to display all records-->
            <%
                try
                {

                    Connection con = MyConnection.connect();//get connection
                    Statement stmt = con.createStatement();//create statement
                    String qry = "Select * from student";//select query to display all records
                    ResultSet rs = stmt.executeQuery(qry);//execute query
            %>
            <table border="1" cellpadding="15">
                    <thead>
                        <tr>
                            <th>Student ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Score</th>

                        </tr>
                    </thead>
            <%    
                    //get one by one record from Result
                    while(rs.next())
                    {
            %>            
                        
                    <tbody>
                        <tr>
                            <td class="dis"><%= rs.getInt(1)%></td>
                            <td class="dis"><%= rs.getString(2)%></td>
                            <td class="dis"><%= rs.getString(3)%></td>
                            <td class="dis"><%= rs.getInt(4)%></td>

                        </tr>
                    </tbody>    
            <%
                    }//while ends
            %>       
            </table>        
            <%        
                }//try ends
                catch(Exception ex)
                {
                    System.out.println("Display error :"+ex);
                }//catch ends

            %>
        </center>   
    </body>
</html>
