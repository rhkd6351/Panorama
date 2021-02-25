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
                <li><a href="/manage/brand">브랜드 조회</a></li>
                <li><a href="/manage/brand">브랜드 신청</a></li>
            </ul>
        </div>

        <div class="right-section-title">
            <h1>브랜드 조회</h1>
        </div>
        <div class="right-section-box">
            <table style="background-color: white; text-align: center">
                <thead>
                <tr style="background-color: khaki">
                    <th>Oid</th>
                    <th>userId</th>
                    <th>name</th>
                    <th>content</th>
                    <th>mod</th>
                    <th>del</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="brand" items="${brandList}">
                    <tr>
                        <td><c:out value="${brand.brandOid}"/> </td>
                        <td><c:out value="${brand.userId}"/></td>
                        <td><c:out value="${brand.name}"/></td>
                        <td><c:out value="${brand.content}"/></td>
                        <td><a href="/manage/brand/modify?brandOid=<c:out value="${brand.brandOid}"/>">✓</a></td>
                        <td><a href="/manage/brand/delete?brandOid=<c:out value="${brand.brandOid}"/>">✓</a></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>