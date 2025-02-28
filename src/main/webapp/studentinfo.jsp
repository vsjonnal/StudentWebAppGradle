<%-- 
    Document   : studentinfo
    Created on : 07-Feb-2025, 3:39:40 pm
    Author     : vsjonnal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student information</title>
    </head>
    <body>
        <h1>Student information</h1>
        <form action="./StudentServlet" method="POST">
            <table>
                <tr>
                    <td>Student ID</td>
                    <td><input type="text" name="studentId" value="${student.studentId}"></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstName" value="${student.firstName}"></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastName" value="${student.lastName}"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="action" value="Add"/>
                        <input type="submit" name="action" value="Update"/>
                        <input type="submit" name="action" value="Delete"/>
                    </td>
                </tr>
            </table>
        </form>
        <br>
        <table>
            <th>Student ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <c:forEach items="${allStudents}" var="stud">
                <tr>
                    <td>${stud.studentId}</td>
                    <td>${stud.firstName}</td>
                    <td>${stud.lastName}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>