<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
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
<div class="bg-dark text-secondary px-1 py-5 text-center">
    <a href='<c:url value="/user/list"/>' type="button"
       class="btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">Return</a>
</div>
<div class="bg-dark text-center d-flex justify-content-center " style="height: 550px;border-top:aqua 1px solid">
    <table class="table table-dark mt-5">
        <tr style="display: flex; flex-direction: column;">
            <th>Id: <c:out value="${user.id}"/></th>
            <th>User name: <c:out value="${user.userName}"/></th>
            <th>Email: <c:out value="${user.email}"/></th>
            <th>Password: <c:out value="${user.password}"/></th>
        </tr>
    </table>
</div>
<%@ include file="fragments/footer.jsp" %>
</body>
</html>
