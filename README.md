# Student Management System

## Table of contents

- [Overview](#overview)
  - [The challenge](#the-challenge)
  - [Screenshots](#screenshots)
  - [Project Structure](#project-structure)
  - [Colour Palette](#colour-palette)
- [My Process](#my-process)
  - [Built with](#built-with)
  - [Design Pattern](#design-pattern)
  - [What I learned](#what-i-learned)
  - [Continued development](#continued-development)


---
---
## Overview

### The challenge

Users should be able to:

- Manage student database from web application

---
---

### Screenshots

Database: MySQL Workbench
![MySQL StudentData](https://user-images.githubusercontent.com/47123640/124112923-b992fc00-da62-11eb-9411-3027d71901d5.JPG)

Master Page
![Student Management - Master Page](https://user-images.githubusercontent.com/47123640/124117368-fad9da80-da67-11eb-84ce-9d1967701494.png)

Create Student
![Create Student](https://user-images.githubusercontent.com/47123640/124117448-11803180-da68-11eb-83e6-2b752c9220dd.png)

Display Student
![Display Student](https://user-images.githubusercontent.com/47123640/124117520-26f55b80-da68-11eb-9987-e139c9aca1b6.png)

Delete Student
![Delete Student](https://user-images.githubusercontent.com/47123640/124117624-442a2a00-da68-11eb-9171-08b3fb67dc0a.png)

Update Student
![Update Student](https://user-images.githubusercontent.com/47123640/124117755-6b80f700-da68-11eb-8adb-a2fafb6116a4.png)

---
---

### Project Structure

![ProjectStructure](https://user-images.githubusercontent.com/47123640/124115235-76865800-da65-11eb-8d29-0f8848843fa9.JPG)

---
---

### Colour Palette

![coolors colorpalette](https://user-images.githubusercontent.com/47123640/124117878-8d7a7980-da68-11eb-8664-400aa2893e40.png)


---
---

## My Process

Project name: StudentCRUD

### Modules: 4
    1.Student Create
    2.Student Display
    3.Student Delete
    4.Student Update


### Built with

- IDE: NetBeans
- Database: MySQL Workbench
- Technology: J2EE(Java, Servlet, JSP), JDBC(MySQL)
- CSS Custom properties
- HTML

### Design Pattern: MVC

#### M = Model (Java Class, DB Class, DB Query Class)
#### V = View (JSP, HTML, CSS, JS)
#### C = Controller (Servlets)

---
---
### What I Learned

Creating Java source packages to store class and servlet files for Model and Controller helps to keep organised.

I learned how set current page to display once process was completed using the request dispatcher.

```Java
if(r == 1){
                out.print("Student record updated");
                request.getRequestDispatcher("display.jsp").include(request, response);
            }
```

I learned to use JSP scriplet tag <%%> to execute Java code in JSP and how to break code so HTML can also be executed side by side.

I learned how to use a while loop in table code to display table contents.

```Java / HTML
<%
    try
    {

    Connection con = MyConnection.connect();
    Statement stmt = con.createStatement();
    String qry = "Select * from student";
    ResultSet rs = stmt.executeQuery(qry);
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

```
---
---
### Continued development

To keep practicing projects that work with the MVC design pattern.

To get better at understanding the PreparedStatement and how it works.

To work on ways to style the servlet out print to compliment the UI.

---
---

