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
    <link rel="stylesheet" href="../resources/css/main__style.css">
    <script
            src="https://kit.fontawesome.com/bb830b2dcb.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<!--���� hearder �ߺ� ���ٻ��� !-->
<header id="navbar__dodo">
    <div class="navbar__left">
        <ul class="site_links">
            <li class="site_links__li">
                <a href="/" class="li__anchor">Home</a>
            </li>
            <li class="site_links__li">
                <a href="/" class="li__anchor">Catalog</a>
            </li>
            <li class="site_links__li">
                <a href="/" class="li__anchor">About us</a>
            </li>
        </ul>
    </div>
    <div class="navbar__center">
        <h1 class="logo">
            PANORAMA
        </h1>
    </div>
    <div class="naver__right">
        <ul class="site_links">
            <li class="site_links__li">
                <a class="li__button">
                    <i class="fas fa-search"></i>
                </a>
            </li>
            <li class="site_links__li">
                <a class="li__button">
                    <i class="fas fa-shopping-bag"></i>
                </a>
            </li>
            <li class="site_links__li">
                <a class="li__button" href="/user/loginCheck">
                    <i class="fas fa-user-circle"></i>
                </a>
            </li>
        </ul>
    </div>
</header>
<!--���� �˻�â ������ ������ �͵� �ߺ� ���ٻ��� -->
<div class="searchplace">
    <div class="title">Search for Shit on our site
    </div>
    <div class="search__container">
        <button class="delete">
            <i class="fas fa-times"></i>
        </button>
        <div class="search__one">
            <input type="text" class="container__input" placeholder="Search anything you want">
            <span class="input__button">
                    <i class="fas fa-search"></i>
            </span>
        </div>
    </div>
    <div class="logo__center">
        <h1 class="logo" style="margin: 0; color:black ">
            PANORAMA
        </h1>
    </div>
</div>
<div class="main">
    <section id="home_main plus" style="margin-top:140px;">
        <div class="home_first">
            <img src="..\resources\img\goods\<c:out value="${logoList.get(0).name}"/>.png" alt="" style="width:30%" class="slide-one">
            <h1><c:out value="${logoList.get(0).name}"/> ($<c:out value="${logoList.get(0).price}"/>)</h1>
            <p>All free if you sign up</p>
        </div>
        <div class="shitone">
            <div class="title_category" data-v-b71614ae=""> New Shit </div>
            <div class="product_list">
                <c:forEach items="${firstList}" var="merchan" varStatus="status" begin="0" end="2">
                    <div class="product__item">
                        <div class="product__pic">
                            <a href="" style="height:100%">
                                <img src="..\resources\img\goods\<c:out value="${merchan.name}"/>.png" alt="" style="width: 100%;">
                            </a>
                        </div>
                        <div class="product__info">
                            <div class="brand__info_save">
                                <button class="brand-info" >
                                    <img src="..\resources\img\goods\pngkit_jumpman-logo-png_1434772.png" alt="" style="width:100%">
                                </button>
                                <button href="" class="save">
                                    <i class="far fa-bookmark"></i>
                                </button>
                            </div>
                            <div class="thing__info_nedan">
                                <h3 class="thing__info"><c:out value="${merchan.name}" />
                                </h3>
                                <h3 class="__nedan">$<c:out value="${merchan.price}"/>
                                </h3>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="product_list">
                <c:forEach items="${firstList}" var="merchan" varStatus="status" begin="3" end="5">
                    <div class="product__item">
                        <div class="product__pic">
                            <a href="" style="height:100%">
                                <img src="..\resources\img\goods\<c:out value="${merchan.name}"/>.png" alt="" style="width: 100%;">
                            </a>
                        </div>
                        <div class="product__info">
                            <div class="brand__info_save">
                                <button class="brand-info" >
                                    <img src="..\resources\img\goods\pngkit_jumpman-logo-png_1434772.png" alt="" style="width:100%">
                                </button>
                                <button href="" class="save">
                                    <i class="far fa-bookmark"></i>
                                </button>
                            </div>
                            <div class="thing__info_nedan">
                                <h3 class="thing__info"><c:out value="${merchan.name}" />
                                </h3>
                                <h3 class="__nedan">$<c:out value="${merchan.price}"/>
                                </h3>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <section id="twice plus">
        <div class="home_twice">
            <img src="..\resources\img\goods\<c:out value="${logoList.get(1).name}"/>.png" alt="" style="width:30%" class="slide-one">
            <h1><c:out value="${logoList.get(1).name}"/> ($<c:out value="${logoList.get(1).price}"/>)</h1>
            <p>All free if you sign up</p>
        </div>
        <div class="shitone">
            <div class="title_category" data-v-b71614ae=""> Popular Shit </div>
            <div class="product_list">
                <c:forEach items="secondList" var="merchan">
                    <div class="product__item">
                        <div class="product__pic">
                            <a href="" style="height:100%">
                                <img src="..\resources\img\goods\hoddie_1.png" alt="" style="width: 100%;">
                            </a>
                        </div>
                        <div class="product__info">
                            <div class="brand__info_save">
                                <button class="brand-info" >
                                    <img src="..\resources\img\goods\pngkit_jumpman-logo-png_1434772.png" alt="" style="width:100%">
                                </button>
                                <button href="" class="save">
                                    <i class="far fa-bookmark"></i>
                                </button>
                            </div>
                            <div class="thing__info_nedan">
                                <h3 class="thing__info">Travis Scott Jordan Cactus Jack Highest Hoodie Olive
                                </h3>
                                <h3 class="__nedan">$253
                                </h3>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <section id="third plus">
        <div class="home_third">
            <img src="..\resources\img\goods\<c:out value="${logoList.get(2).name}"/>.png" alt="" style="width:30%" class="slide-one">
            <h1><c:out value="${logoList.get(2).name}"/> ($<c:out value="${logoList.get(2).price}"/>)</h1>
            <p>All free if you sign up</p>
        </div>
        <div class="shitone">
            <div class="title_category" data-v-b71614ae=""> Hope Shit </div>
            <div class="product_list">
                <c:forEach items="fourthList" var="merchan">
                    <div class="product__item">
                        <div class="product__pic">
                            <a href="" style="height:100%">
                                <img src="..\resources\img\goods\hoddie_1.png" alt="" style="width: 100%;">
                            </a>
                        </div>
                        <div class="product__info">
                            <div class="brand__info_save">
                                <button class="brand-info" >
                                    <img src="..\resources\img\goods\pngkit_jumpman-logo-png_1434772.png" alt="" style="width:100%">
                                </button>
                                <button href="" class="save">
                                    <i class="far fa-bookmark"></i>
                                </button>
                            </div>
                            <div class="thing__info_nedan">
                                <h3 class="thing__info">Travis Scott Jordan Cactus Jack Highest Hoodie Olive
                                </h3>
                                <h3 class="__nedan">$253
                                </h3>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
</div>
<script src="../resources/js/slidesearch.js" ></script>
</body>
</html>