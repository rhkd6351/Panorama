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
                <li><a href="/manage/merchan">상품 조회</a></li>
            </ul>
        </div>

        <div class="right-section-title">
            <h1>상품 조회</h1>
        </div>
        <div class="right-section-box">
            <table style="background-color: white; text-align: center">
                <thead>
                <tr style="background-color: khaki">
                    <th>Oid</th>
                    <th>userId</th>
                    <th>brandOid</th>
                    <th>sort</th>
                    <th>name</th>
                    <th>content</th>
                    <th>price</th>
                    <th>postDate</th>
                    <th>updateDate</th>
                    <th>mod</th>
                    <th>del</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="merchan" items="${merchanList}">
                    <tr>
                        <td><c:out value="${merchan.merchanOid}"/> </td>
                        <td><c:out value="${merchan.userId}"/></td>
                        <td><c:out value="${merchan.brandOid}"/></td>
                        <td><c:out value="${merchan.sort}"/></td>
                        <td><c:out value="${merchan.name}"/></td>
                        <td><c:out value="${merchan.content}"/></td>
                        <td><c:out value="${merchan.price}"/></td>
                        <td><c:out value="${merchan.postDate}"/></td>
                        <td><c:out value="${merchan.updateDate}"/></td>
                        <td><a href="/manage/merchan/modify?merchanOid=<c:out value="${merchan.merchanOid}"/>">✓</a></td>
                        <td><a href="/manage/merchan/delete?merchanOid=<c:out value="${merchan.merchanOid}"/>">✓</a></td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>