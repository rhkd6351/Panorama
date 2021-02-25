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
                <li><a href="/manage/logo">메인 로고</a></li>
            </ul>
        </div>

        <div class="right-section-title">
            <h1>메인 로고</h1>
        </div>
        <div class="right-section-box">
            <h1>1번 로고</h1>
            <br>
            <table style="background-color: white; text-align: center">
                <thead>
                <tr style="background-color: khaki">
                    <th width="100px">현재 oid</th>
                    <th width="400px">현재 상품명</th>
                    <th>변경 상품명</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><c:out value="${logoList.get(0).merchanOid}"/> </td>
                    <td><c:out value="${logoList.get(0).name}"/></td>
                    <form action="/manage/logo/modify">
                        <input type="hidden" name="logoNum" value="1"/>
                        <td>
                            <select name="changeLogoOid">
                                <c:forEach var="merchan" items="${merchanList}">
                                    <option value="<c:out value='${merchan.merchanOid}'/>">
                                        <c:out value="${merchan.name}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </td>
                        <td><input type="submit" value="변경"></td>
                    </form>
                </tr>
                </tbody>
            </table>
            <br><br>

            <h1>2번 로고</h1>
            <br>
            <table style="background-color: white; text-align: center">
                <thead>
                <tr style="background-color: khaki">
                    <th width="100px">현재 oid</th>
                    <th width="400px">현재 상품명</th>
                    <th>변경 상품명</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><c:out value="${logoList.get(1).merchanOid}"/> </td>
                    <td><c:out value="${logoList.get(1).name}"/></td>
                    <form action="/manage/logo/modify">
                        <input type="hidden" name="logoNum" value="2"/>
                        <td>
                            <select name="changeLogoOid">
                                <c:forEach var="merchan" items="${merchanList}">
                                    <option value="<c:out value='${merchan.merchanOid}'/>">
                                        <c:out value="${merchan.name}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </td>
                        <td><input type="submit" value="변경"></td>
                    </form>
                </tr>
                </tbody>
            </table>
            <br><br>

            <h1>3번 로고</h1>
            <br>
            <table style="background-color: white; text-align: center">
                <thead>
                <tr style="background-color: khaki">
                    <th width="100px">현재 oid</th>
                    <th width="400px">현재 상품명</th>
                    <th>변경 상품명</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><c:out value="${logoList.get(2).merchanOid}"/> </td>
                    <td><c:out value="${logoList.get(2).name}"/></td>
                    <form action="/manage/logo/modify">
                        <input type="hidden" name="logoNum" value="3"/>
                        <td>
                            <select name="changeLogoOid">
                                <c:forEach var="merchan" items="${merchanList}">
                                    <option value="<c:out value='${merchan.merchanOid}'/>">
                                        <c:out value="${merchan.name}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </td>
                        <td><input type="submit" value="변경"></td>
                    </form>
                </tr>
                </tbody>
            </table>
            <br><br>
        </div>
    </div>
</section>
</body>
</html>