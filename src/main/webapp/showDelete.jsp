<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pl-PL">
<head>
    <meta charset="utf-8"/>
    <title>User Show</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

</head>
<body>
<%@ include file="fragments/header.jsp" %>
<div class="bg-dark text-secondary px-1 py-1 text-center">
    <div class="py-5" style="height: 30px;border-bottom: aqua 1px solid">
        <a href='<c:url value="/user/list"/>' type="button" class="btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">Return</a>
    </div>
</div>
<table class="table table-dark">
    <tr style="display: flex; flex-direction: column">
        <th>Id: <c:out value="${user.id}"/></th>
        <th>User name: <c:out value="${user.userName}"/></th>
        <th>Email: <c:out value="${user.email}"/></th>
        <th>Password: <c:out value="${user.password}"/></th>
    </tr>
</table>

<div class="bg-dark text-secondary px-1 py-1 text-center py-5" style="height: 500px">
    <label>
        <h3 style="color: white;">Are u sure u want to delete this user?</h3>
    </label>
    <form action="/user/delete" method="POST">
        <input class="btn btn-outline-danger  px-3 fw-bold" type="submit" name="decision" value="Yes">
        <input class="btn btn-outline-success  x-3 fw-bold" type="submit" name="decision" value="No">
    </form>
</div>
<%@ include file="fragments/footer.jsp" %>
</body>
</html>