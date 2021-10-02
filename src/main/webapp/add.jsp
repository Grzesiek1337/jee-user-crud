<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>User Add</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<%@ include file="fragments/header.jsp" %>
<div class="bg-dark text-secondary px-1 py-1 text-center">
    <div class="py-5">
        <a href='<c:url value="/user/list"/>' type="button" class="btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">Return</a>
    </div>
</div>
<div class="bg-dark text-center d-flex justify-content-center  " style="height: 550px;border-top:aqua 1px solid;">
    <div class="py-5">
        <form action="/user/add" method="POST" class="bg-dark d-flex justify-content-center flex-column">
            <label class="btn btn-outline-info fw-bold">
                User name:
                <input type="text" name="userName">
            </label>
            <label class="btn btn-outline-info fw-bold">
                User email:
                <input type="text" name="email">
            </label>
            <label class="btn btn-outline-info fw-bold">
                Password:
                <input type="text" name="password">
            </label>
            <div class="bg-dark d-flex justify-content-center mt-4">
                <button type="submit" class="btn btn-outline-success  x-3 fw-bold">Add</button>
                <a href='<c:url value="/user/list"/>' type="button" class="btn btn-outline-info">Return</a>
            </div>
        </form>
    </div>
</div>
<%@ include file="fragments/footer.jsp" %>
</body>
</html>


