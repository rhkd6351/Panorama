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
    <link rel="stylesheet" href="../../resources/css/mybrand.css">
    <link rel="stylesheet" href="../../resources/css/signup__style.css">
    <script
            src="https://kit.fontawesome.com/bb830b2dcb.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<%@include file="header.jsp" %>
<div class="choice_layer" >
    <form method = "POST" class="plus_brand" action="/user/brand/addMerchan" enctype="multipart/form-data">
        <input type="hidden" name="brandOid" value="${brandvo.brandOid}"/>
        <header class="choice_header">
            <h1 class="logo" style="font-size:35px; margin:0; color:black">
                PLUS
            </h1>
            <button class="delete__choice_layer" type="button">
                <i class="fas fa-times" aria-hidden="true"></i>
            </button>
        </header>
        <div class="choice_contents" style="flex-direction: column; justify-content: flex-start;overflow-y: scroll;
            padding-bottom:3px;
            ">
            <div class="input_box">
                <h3 class="input_title" style="color:black; margin:1vw 0;">Product Name</h3>
                <div class="input_ones">
                    <input type="text"  autocomplete="off" class="input_one " name="name" data-type="text">
                </div>
                <p class="input_error input_eng_number  " data-error="1" >
                    Please enter it anything
                </p>
            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:black; margin:1vw 0;">Product Price</h3>
                <div class="input_ones">
                    <input type="text"  autocomplete="off" class="input_one " name="price" data-type="number">
                </div>
                <p class="input_error input_error_number  " data-error="1" >
                    Please enter it only number(0-9)
                </p>

            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:black; margin:1vw 0;">Product Infomation</h3>
                <div class="input_ones">
                    <input type="text"  autocomplete="off" class="input_one " name="content" data-type="text">
                </div>
                <p class="input_error input_error_number  " data-error="1" >
                    Please enter it anything
                </p>

            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:black; margin:1vw 0;">Product Kinds</h3>
                <div class="input_ones">
                    <button class="kinds_button"  type="button">Top</button>
                    <button class="kinds_button" type="button">Pants</button>
                    <button class="kinds_button" type="button">Shoes</button>
                    <br>
                    <button class="kinds_button" type="button">Hat</button>
                    <button class="kinds_button" type="button">Bag</button>
                    <input type="text"  autocomplete="off" class="input_one " id="kinds_one" name="sort" style="display:none">
                </div>
                <p class="input_error input_error_number  " data-error="1" >
                    Please enter it only english
                </p>

            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:black; margin:1vw 0;">Product Pic</h3>
                <div class="input_ones">
                    <input type="file"  autocomplete="off" class="input_one input_file " name="img" onchange="handleFiles(this.files)">
                </div>
                <p class="input_error input_error_number  " data-error="1" >
                    Please enter it only english
                </p>
            </div>
        </div>
        <div class="choice_enter_out">
            <input class="brand_enter submit_button_notwork" type="submit" value="Create">
            </input>
        </div>

    </form>
</div>
<div class="seller__info">
    <div class="user__container" >
        <div class="container__menu">
            <h1 class="mypage_logo">
                MY BRAND
            </h1>
            <ul class="ul_mypage">
                <li class="li_mypage">
                    <button class=" gobutton" data-sectiongo="brand">My Brand</button>
                </li>
                <li class="li_mypage">
                    <button class=" gobutton " data-sectiongo="sales">Total Sales</button>
                </li>
                <li class="li_mypage">
                    <button class=" gobutton" data-sectiongo="wish">Wish list</button>
                </li>
            </ul>
        </div>
        <div class="container__user_info">
            <div class="brand__info">
                <div class="brand_info_kotoba">
                    <strong class="brand__name">${brandvo.name}</strong>
                    <h1 class="brand__date">${brandvo.content}</h1>
                </div>
                <div class="brand_logo">
                    <a href="" style="height:100%;background-color: rgb(170, 215, 255)" class="brand_an">
                        <img src="../../resources/img/brand/<c:out value='${brandvo.name}'/>_logo.png" alt="" class="mybrand__logo">
                    </a>
                </div>


            </div>
            <div class="user_info__brand sales">
                <div class="brand_title">
                    <strong  class="position" style="color:white">Brand Sales</strong>
                </div>
                <div class="user_info__sales" style="margin-top: 30px;">
                    <div  class="info_point" >
                        <strong  class="sales_one" style="color:white">${brOrderList.size()}</strong>
                        <p  class="sales_info" style="color:white" >Total</p>
                    </div>
                    <div  class="info_point" style="border-left:3px solid white">
                        <strong  class="sales_one" style="color:white">미구현</strong>
                        <p  class="sales_info" style="color:white" >Rank</p>
                    </div>
                    <div  class="info_point" style="border-left:3px solid white">
                        <strong  class="sales_one" style="color:white">${sum}$</strong>
                        <p  class="sales_info" style="color:white" >Price</p>
                    </div>
                    <div  class="info_point" style="border-left:3px solid white">
                        <strong  class="sales_one" style="color:white">10%</strong>
                        <p  class="sales_info" style="color:white" >fees</p>
                    </div>
                </div>
            </div>
            <div class="user_info__brand sales">
                <div class="brand_list_title">
                    <strong  class="position" style="color:white">Merchandise List</strong>
                    <button  class="brand_list_edit">
                        <span style="font-weight: 1000; margin-right:0.5vw">Plus</span>
                        <i class="fas fa-chevron-right"></i>
                    </button>

                </div>
                <div class="brand_list_one">
                    <c:forEach var="merchan" items="${mrList}">
                    <div class="one__shit">
                        <div class="deleteshit">
                            <button class="deleteone">
                                <a href="/user/brand/delMerchan?merchanOid=<c:out value="${merchan.merchanOid}"/>&brandOid=<c:out value="${merchan.brandOid}"/>"><i class="fas fa-times" aria-hidden="true"></i></a>
                            </button>
                        </div>
                        <div class="shit_pic">
                            <div class="pic_back">
                                <img src="../../resources/img/goods/<c:out value='${merchan.name}'/>.png" alt="" style="width:50%;">
                            </div>
                        </div>
                        <div class="shit_info">
                            <h3 class="thing__info" ><c:out value="${merchan.name}"/>
                            </h3>
                            <h3 class="__nedan" style="margin-top:1.2vw; font-size: 1.5vw;">$<c:out value="${merchan.price}"/>
                            </h3>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>



<script src="../../resources/js/slidesearch.js" ></script>
<script src="../../resources/js/usermagic.js" ></script>
<script src="../../resources/js/seller_magic.js" ></script>

</body>

</html>
