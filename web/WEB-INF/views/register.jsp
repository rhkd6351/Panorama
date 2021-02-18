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
    <link href="https://fonts.googleapis.com/css2?family=Bangers&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/main__style.css">
    <link rel="stylesheet" href="../css/login__style.css">
    <link rel="stylesheet" href="../css/signup__style.css">

    <script
            src="https://kit.fontawesome.com/bb830b2dcb.js"
            crossorigin="anonymous"
    ></script>
    <script src="../js/slidesearch.js" defer ></script>
    <script src="../js/signup.js" defer></script>

</head>
<body>
<!--���� hearder �ߺ� ��ٻ��� !-->
<header id="navbar__dodo">
    <div class="navbar__left">
        <ul class="site_links">
            <li class="site_links__li">
                <a href="..\html\main.html" class="li__anchor">Home</a>
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
                <a class="li__button" href="..\html\login.html">
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
<div class="choice_layer">
    <div class="choice_gender">
        <header class="choice_header">
            <h1 class="logo" style="font-size:35px; margin:0; color:black">
                CHOICE
            </h1>
        </header>
        <div class="choice_contents">
            <button class="choice_button">male</button>
            <button class="choice_button">female</button>
        </div>
        <div class="choice_enter_out">
            <button class="choice_enter" style="color:rgba(0, 0, 0, 0.3); border-color:rgba(0, 0, 0, 0.3);">Confirm
            </button>
        </div>
    </div>
</div>
<section id="content_signup" class="main"style="margin-top:140px; padding:0 32px;">
    <div class="contents_login">
        <div class="logo_login">
            <h1 class="logo" style="font-size:35px">
                SIGN UP
            </h1>
        </div>
        <form action="#" name="userinput">
            <div class="input_box">
                <h3 class="input_title" style="color:white">ID</h3>
                <div class="input_item">
                    <input  type="email" placeholder="ex)Panorama@naver.com" autocomplete="off" class="input_txt" name="userID">
                </div>
                <p  class="input_error" >
                    Please enter it correctly
                </p>
            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:white">PASSWORD</h3>
                <div class="input_item">
                    <input  type="password" placeholder="" autocomplete="off" class="input_txt" name="userPw">
                </div>
                <p class="input_error" >
                    Please enter English, numbers, and special characters. (8-16 Characters)
                </p>
            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:white">PHONE NUMBER</h3>
                <div class="input_item">
                    <input  type="tel" placeholder="" autocomplete="off" class="input_txt" name="phone">
                </div>
                <p class="input_error" >
                    Please enter English, numbers, and special characters. (8-16 Characters)
                </p>
            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:white">BIRTH</h3>
                <div class="input_item"  style="border: none;">
                    <input  type="date" value="2000-01-01" placeholder=""  class="input_txts" >
                </div>
                <p class="input_error" >
                    Please enter English, numbers, and special characters. (8-16 Characters)
                </p>
            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:white">GENDER</h3>
                <div class="input_item selectge_out">
                    <input  type="text" disabled="disabled" placeholder="select your gender" autocomplete="off" class="input_txt selectge " name="gender">
                </div>
                <p class="input_error" >
                    Please enter English, numbers, and special characters. (8-16 Characters)
                </p>
            </div>
            <div class="login_btn_box">
                <a  href="#" type="button" class=" disabled"  onClick="goData()" style="font-size:20px"> LOGIN </a>
            </div>
        </form>


    </div>




</section>

</body>


</html>
