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
            <h1>상품 수정</h1>
        </div>
        <div class="right-section-box">
            <form class="formbox" action="/manage/merchan/modify" method="POST">
                Merchan OID: <input name = "merchanOid" type="text" value="<c:out value='${merchan.merchanOid}'/>" readonly class="formimp"/><br/><br/>
                User ID: <input readonly name = "userId" type="text" value="<c:out value='${merchan.userId}'/>"/><br/><br/>
                Brand Oid: <input name = "brandName" type="text" value="<c:out value='${merchan.brandOid}'/>"/><br/><br/>
                Sort: <input name = "sort" type="text" value="<c:out value='${merchan.sort}'/>"/><br/><br/>
                name: <input name = "name" type="text" value="<c:out value='${merchan.name}'/>"/><br/><br/>
                content: <input name = "content" type="text" value="<c:out value='${merchan.content}'/>"/><br/><br/>
                price: <input name = "price" type="number" value="<c:out value='${merchan.price}'/>"/><br/><br/>
                logo: <input name = "logo" type="number" value="<c:out value='${merchan.logo}'/>" readonly/><br/><br/>
                postDate: <input name = "postDate" type="text" value="<c:out value='${merchan.postDate}'/>" disabled="true"/><br/><br/>
                updateDate: <input name = "updateDate" type="text" value="<c:out value='${merchan.updateDate}'/>" disabled="true"/><br/><br/>
                <input type="submit">
            </form>
        </div>
    </div>
</section>
</body>
</html>