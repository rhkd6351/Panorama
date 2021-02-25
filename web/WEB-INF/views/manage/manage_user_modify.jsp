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
                <li><a href="/manage/user">회원 조회</a></li>
                <li><a href="/manage/user/Request">셀러 요청</a></li>
            </ul>
        </div>

        <div class="right-section-title">
            <h1>회원 수정</h1>
        </div>
        <div class="right-section-box">
            <form class="formbox" action="/manage/user/modify" method="post">
                User OID: <input name = "userOid" type="text" value="<c:out value='${user.userOid}'/>" disabled="true" class="formimp"/><br/><br/>
                User ID: <input readonly name = "userId" type="text" value="<c:out value='${user.userId}'/>"/><br/><br/>
                User PW: <input name = "userPw" type="text" value="<c:out value='${user.userPw}'/>"/><br/><br/>
                User phone: <input name = "phone" type="text" value="<c:out value='${user.phone}'/>"/><br/><br/>
                User auth: <select name="auth">
                    <option value="0">admin</option>
                    <option value="1" selected>user</option>
                    <option value="2">seller</option>
                </select> <br/><br/>
                User reg_date: <input name = "regDate" type="text" value="<c:out value='${user.regDate}'/>" disabled="true"><br/><br/>
                User name: <input name = "name" type="text" value="<c:out value='${user.name}'/>"/><br/><br/>
                User birth: <input name = "birth" type="date" value="<c:out value='${user.birth}'/>"/><br/><br/>
                User gender: <select name="gender">
                    <option value="male">male</option>
                    <option value="female">female</option>
                </select><br/><br/>

                <input type="submit">
            </form>

        </div>
    </div>
</section>
</body>
</html>