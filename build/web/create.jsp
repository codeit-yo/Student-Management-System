<%-- 
    Document   : create
    Created on : 29-Jun-2021, 10:54:58
    Author     : yoliv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Student</title>
        
    </head>
    <body>
        
        <!----Using jsp tag : you can include "master.html" page--->
        <jsp:include page="master.html"/>
        
        <center>
            <h2>Student Create</h2>

            <!----create form for student records--->

            <form action="create" method="get">
                <table border="1" cellpadding="15">
                    <tr>
                        <td>Student ID: <input type="text" name="sid"/></td>
                    </tr>
                    <tr>
                        <td>First Name: <input type="text" name="fname"/></td>
                    </tr>
                    <tr>
                        <td >Last Name: <input type="text" name="lname"/></td>
                    </tr>
                    <tr>
                        <td>Score: <input type="text" name="score"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Insert"/></td>
                    </tr>
                    
                </table>

            </form>
        </center>   
    </body>
</html>
