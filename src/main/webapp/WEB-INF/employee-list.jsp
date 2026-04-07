<%--
  Created by IntelliJ IDEA.
  User: dt222
  Date: 07/04/2026
  Time: 7:27 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Danh sách nhân viên</title>
</head>
<body>
<h1>Danh sách nhân viên</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên đầy đủ</th>
        <th>Phòng ban</th>
        <th>Mức Lương</th>
        <th>Đánh giá</th>
    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.fullName}</td>
            <td>${employee.department}</td>
            <td>${employee.salary}</td>
            <td>
                <c:choose>
                    <c:when test="${employee.salary >= 10000}">
                        Mức Lương cao
                    </c:when>
                    <c:otherwise>
                        Mức Lương cơ bản
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

