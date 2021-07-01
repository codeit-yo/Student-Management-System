<%-- 
    Document   : delete
    Created on : 29-Jun-2021, 10:55:42
    Author     : yoliv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Student</title>
    </head>
    <body>
        
        <!----Using jsp tag : you can include "master.html" page--->
        <jsp:include page="master.html"/>
        <center>
            <h2>Delete Student</h2>

            <!--Create <form> accepting "student id",on "submit button" call action "delete"-->
            <form action="delete" method="get">
                <table border="1" cellpadding="15">
                    <tr>
                        <td>Student ID: <input type="text" name="sid"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Delete"/></td>
                    </tr>
                
                
                </table>
            </form>
            
         </center>   
    </body>
</html>
