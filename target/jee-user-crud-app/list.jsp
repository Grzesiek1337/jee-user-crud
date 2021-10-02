<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>User List</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<%@ include file="fragments/header.jsp" %>
<div class="bg-dark text-secondary px-1 py-5 text-center" style="border-bottom: aqua 1px solid" >
    <a href='<c:url value="/user/add"/>' type="button" class="btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">Add New User</a>
</div>
<div class="bg-dark" style="overflow-y: scroll; overflow-x: hidden;  height: 550px;">
    <table class="table table-dark">
        <tr style="position: sticky; top: 0;">
            <th>Id</th>
            <th>User name</th>
            <th>Email</th>
            <th></th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.userName}</td>
                <td>${user.email}</td>
                <td style="display: flex; flex-direction: row-reverse">
                    <a href='<c:url value="/user/delete?id=${user.id}"/>' class="btn btn-outline-danger  px-3 fw-bold">Remove</a>
                    <a href='<c:url value="/user/edit?id=${user.id}"/>' class="btn btn-outline-success  x-3 fw-bold">Edit</a>
                    <a href='<c:url value="/user/show?id=${user.id}"/>' class="btn btn-outline-info">Show</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@ include file="fragments/footer.jsp" %>
</body>
</html>
