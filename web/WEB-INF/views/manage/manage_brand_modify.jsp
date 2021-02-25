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
            <h1>브랜드 수정</h1>
        </div>
        <div class="right-section-box">
            <form class="formbox" action="/manage/brand/modify" method="POST">
                Brand OID: <input name = "brandOid" type="text" value="<c:out value='${brand.brandOid}'/>" readonly class="formimp"/><br/><br/>
                User ID: <input readonly name = "userId" type="text" value="<c:out value='${brand.userId}'/>" readonly/><br/><br/>
                Name: <input name = "name" type="text" value="<c:out value='${brand.name}'/>"/><br/><br/>
                Content: <input name = "content" type="text" value="<c:out value='${brand.content}'/>"/><br/><br/>
                <input type="submit">
            </form>
        </div>
    </div>
</section>
</body>
</html>