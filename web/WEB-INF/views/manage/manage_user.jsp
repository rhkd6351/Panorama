<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage</title>
    <link href="../../../resources/css/manage__style.css" rel="stylesheet"/>
</head>
<body>
<div class="page-wrapper">
</div>
<%@include file="manage_header.jsp"%>

<section>
    <%@include file="manage_left.jsp"%>
    <div class="right-section flt">

        <div class="right-section-nav">
            <ul class="right-section-nav-element">
                <li>회원 조회</li>
                <li>셀러 요청</li>
            </ul>
        </div>

        <div class="right-section-title">
            <h1>회원 조회</h1>
        </div>
        <div class="right-section-box">
            <table border="1px solid black">
                <thead>
                <tr>
                    <th>userOid</th>
                    <th>userId</th>
                    <th>userPw</th>
                    <th>phone</th>
                    <th>auth</th>
                    <th>reg_date</th>
                    <th>name</th>
                    <th>birth</th>
                    <th>gender</th>
                    <th>modify</th>
                    <th>delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td><c:out value="${user.userOid}"/> </td>
                        <td><c:out value="${user.userId}"/> </td>
                        <td><c:out value="${user.userPw}"/> </td>
                        <td><c:out value="${user.phone}"/> </td>
                        <td><c:out value="${user.auth}"/> </td>
                        <td><c:out value="${user.regDate}"/> </td>
                        <td><c:out value="${user.name}"/> </td>
                        <td><c:out value="${user.birth}"/> </td>
                        <td><c:out value="${user.gender}"/> </td>
                        <td></td>
                        <td></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>