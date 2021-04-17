<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 4/17/2021
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="lsphone" value="${requestScope.phones}" />
<html>
<html>
<head>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Title</title>
</head>
<body>
<table class="w3-table w3-striped">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    <c:forEach var="phone" items="${lsphone}">
        <tr>
            <td>${phone.id}</td>
            <td id="name_${phone.id}">${phone.name}</td>
            <td id="title_${phone.id}">${phone.title}</td>
            <td id="image_${phone.id}">${phone.url_image}</td>
            <td>
                <a data-toggle="modal" data-target="#updateCateModal" onclick="viewCate(${cate.id})" />  Edit  </a>
                |
                <a onclick="deleteCate(${cate.id})" class="delete" > Delete  </a>
            </td>
        </tr>
    </c:forEach>


</table>
</body>
</html>
