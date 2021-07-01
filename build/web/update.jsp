<%-- 
    Document   : update
    Created on : 29-Jun-2021, 10:57:21
    Author     : yoliv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
    </head>
    <body>
        
        <!----Using jsp tag : you can include "master.html" page--->
        <jsp:include page="master.html"/>
        <center>
            <h2>Update Student</h2>
                
            <!--Create a form for accepting "sid" and "score" on "submit button" call action "update"--->
            <form action="update" method="get">
                <table border="1" cellpadding="15">
                    <tr>
                        <td>Student ID: <input type="text" name="sid"/></td>
                    </tr>
                    <tr>
                        <td>New Score: <input type="text" name="score"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                
                </table>
            </form>
            
        </center>    
    </body>
</html>
