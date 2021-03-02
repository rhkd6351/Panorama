<%--
  Created by IntelliJ IDEA.
  User: im-yegwang
  Date: 2021/02/17
  Time: 11:34 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="org.zerock.domain.UserVO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lexend+Mega&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pangolin&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/css/main__style.css">
    <link rel="stylesheet" href="../../resources/css/user.css">

    <script
            src="https://kit.fontawesome.com/bb830b2dcb.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<%@include file="header.jsp" %>
<div class="seller__info">
    <div class="user__container" >
        <div class="container__menu">
            <h1 class="mypage_logo">
                MY PAGE
            </h1>
            <ul class="ul_mypage">
                <li class="li_mypage">
                    <button class=" gobutton" data-sectiongo="brand">My Brand</button>
                </li>
                <li class="li_mypage">
                    <button class=" gobutton " data-sectiongo="sales">Total Sales</button>
                </li>
                <br/>
                <li>
                    <button class=" gobutton ">Order Manage</button>
                </li>
                <li>
                    <button class=" gobutton ">Request Brand</button>
                </li>
                <li>
                    <button class=" gobutton ">Exchange</button>
                </li>
                <br/>
                <li>
                    <button class=" gobutton ">Succesion</button>
                </li>
                <li>
                    <button class=" gobutton "><a href="/user/logout">LogOut</a></button>
                </li>

            </ul>
        </div>
        <div class="container__user_info">
            <div class="user_info__member">
                <div class="user_pic">
                            <span  class="member__rank">
                                <i class="fas fa-user-tie"></i>
                            </span>
                    <div class="member__info">
                        <strong  class="position" style="color:white"><%=((UserVO)session.getAttribute("userInfo")).getName()%></strong>
                        <p  class="email" style="color:white" ><%=((UserVO)session.getAttribute("userInfo")).getUserId()%></p>
                        <a  href="" class="btn_edit_profile" type="button"> Profile edit </a>
                    </div>

                </div>
                <div  class="user_info">
                    <div  class="info_rank">
                        <strong data-v-743be3a7="" class="rank" style="color:white">미구현</strong>
                        <p data-v-743be3a7="" class="rank_info" style="color:white" >Membership Level</p>
                    </div>
                    <div  class="info_point" style="border-left:3px solid white">
                        <strong  class="point" style="color:white"><%=((UserVO)session.getAttribute("userInfo")).getPoint()%>P</strong>
                        <p  class="point_info" style="color:white" >Point</p>
                    </div>
                </div>
            </div>
            <div class="user_info__brand brand">
                <div class="brand_title">
                    <strong  class="position" style="color:white">Registered brand</strong>
                </div>
                <div class="brand_list">
                    <c:forEach var="brand" items="${brList}">
                    <div class="brand__gogo">
                        <a href="/user/myInfo/brand?brandOid=<c:out value="${brand.brandOid}"/>" style="height:100%" class="brand_an">
                            <img src="../../resources/img/brand/<c:out value="${brand.name}"/>_logo.png" alt="" class="brand__logo">
                        </a>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="user_info__brand sales">
                <div class="brand_title">
                    <strong  class="position" style="color:white">Total Sales</strong>
                </div>
                <div class="user_info__sales" style="margin-top: 30px;">
                    <div  class="info_point" >
                        <strong  class="sales_one" style="color:white"><c:out value="${myOrderList.size()}" /></strong>
                        <p  class="sales_info" style="color:white" >Total</p>
                    </div>
                    <div  class="info_point" style="border-left:3px solid white">
                        <strong  class="sales_one" style="color:white">미구현</strong>
                        <p  class="sales_info" style="color:white" >Rank</p>
                    </div>
                    <div  class="info_point" style="border-left:3px solid white">
                        <strong  class="sales_one" style="color:white">
                            <c:out value="${total}"/> $</strong>
                        <p  class="sales_info" style="color:white" >Price</p>
                    </div>
                    <div  class="info_point" style="border-left:3px solid white">
                        <strong  class="sales_one" style="color:white">10%</strong>
                        <p  class="sales_info" style="color:white" >fees</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../../resources/js/slidesearch.js" ></script>
<script src="../../resources/js/usermagic.js" ></script>

</body>

</html>