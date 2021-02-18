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
<script type="text/javascript">
    var login = ${login};
    if(login != null){
        alert("아이디 또는 비밀번호가 틀렸습니다.");
    }
</script>
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
    <link rel="stylesheet" href="../resources/css/login__style.css">
    <script
            src="https://kit.fontawesome.com/bb830b2dcb.js"
            crossorigin="anonymous"
    ></script>
    <script src="../resources/js/slidesearch.js" defer ></script>
    <script src="../resources/js/loginmagic.js" defer></script>
</head>
<body>
<!--���� hearder �ߺ� ��ٻ��� !-->
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
<!--���� �˻�â ������ ������ �͵� �ߺ� ��ٻ��� -->
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
<section id="home_main plus content_login" class="main"style="margin-top:140px; padding:0 32px;">
    <div class="contents_login">
        <div class="logo_login">
            <h1 class="logo" style="font-size:20px">
                PANORAMA
            </h1>
            <h2 class="logo" style="font-size:10px">
                Shoot! Take a Panorama
            </h2>
        </div>
        <form action="login" name="userinput" method="post">
            <div class="input_box">
                <h3 class="input_title" style="color:white">ID</h3>
                <div class="input_item">
                    <input  type="text" placeholder="ex)Panorama@naver.com" autocomplete="off" class="input_txt"
                    name="userId">
                </div>
                <p  class="input_error" >
                    Please enter it correctly
                </p>
            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:white">PASSWORD</h3>
                <div class="input_item">
                    <input  type="password" placeholder="" autocomplete="off" class="input_txt"
                    name="userPw">
                </div>
                <p class="input_error" >
                    Please enter English, numbers, and special characters. (8-16 Characters)
                </p>
            </div>
            <div class="login_btn_box">
                <a  href="#" type="button" class=" disabled"  onClick="goData()" style="font-size:20px"> LOGIN </a>
                <a href="#" type="button" class="disabled syakai "  style="background-color:rgb(170 215 255);">
                    <div class="syakailogo">
                        <i class="fab fa-google"></i>
                    </div>
                    <span style="font-size:20px">GOOGLE LOGIN</span>
                </a>
                <a href="#" type="button" class="disabled syakai "  style="background-color:#4267B2">
                    <div class="syakailogo">
                        <i class="fab fa-facebook-f"></i>
                    </div>
                    <span style="font-size:20px">FACEBOOK LOGIN</span>
                </a>
            </div>
        </form>
        <div class="signupss">
            <div class="plusbuttons">
                <a class="signupgo" href="../html/signup.html">SIGN UP</a>
            </div>
            <div class="plusbuttons" style="border-left:3px solid white; border-right:3px solid white;">
                <a class="idcheckgo" >ID CHECK</a>
            </div>
            <div class="plusbuttons">
                <a class="passwordcheckgo">PW CHECK</a>
            </div>
        </div>
    </div>
</section>
</body>
</html>
