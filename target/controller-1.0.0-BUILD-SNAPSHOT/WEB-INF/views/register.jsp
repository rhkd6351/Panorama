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
    <link href="https://fonts.googleapis.com/css2?family=Changa:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/main__style.css">
    <link rel="stylesheet" href="../resources/css/login__style.css">
    <link rel="stylesheet" href="../resources/css/signup__style.css">

    <script
            src="https://kit.fontawesome.com/bb830b2dcb.js"
            crossorigin="anonymous"
    ></script>
    <script src="../resources/js/slidesearch.js" defer ></script>
    <script src="../resources/js/signup.js" defer></script>
    <script src="../resources/js/loginmagic.js" defer></script>

</head>
<body>

<%@include file="header.jsp" %>

<div class="choice_layer">
    <div class="choice_gender">
        <header class="choice_header">
            <h1 class="logo" style="font-size:35px; margin:0; color:black">
                CHOICE
            </h1>
        </header>
        <div class="choice_contents">
            <button class="choice_button" data-gender="male">male</button>
            <button class="choice_button" data-gender="female">female</button>
        </div>
        <div class="choice_enter_out">
            <button class="choice_enter">Confirm
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
        <form action="/user/register" name="userinput" method="post">
            <div class="input_box">
                <h3 class="input_title" style="color:white">ID</h3>
                <div class="input_item">
                    <input  type="email" placeholder="ex)Panorama@naver.com" autocomplete="off" class="input_txt" name="userId">
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
                <h3 class="input_title" style="color:white">NAME</h3>
                <div class="input_item">
                    <input  type="tel" placeholder="" autocomplete="off" class="input_txt" name="name">
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
                    <input  type="date" value="2000-01-01" placeholder=""  class="input_txts" name="birth">
                </div>
                <p class="input_error" >
                    Please enter English, numbers, and special characters. (8-16 Characters)
                </p>
            </div>
            <div class="input_box">
                <h3 class="input_title" style="color:white">GENDER</h3>
                <div class="input_item selectge_out">
                    <input  type="text"  placeholder="select your gender" autocomplete="off" class="input_txt selectge " name="gender" disabled="disabled" >
                </div>
                <p class="input_error" >
                    Please enter English, numbers, and special characters. (8-16 Characters)
                </p>
            </div>

            <div class="login_btn_box">
                <input type="submit" class=" disabled submit_button"   style="font-size:20px" value="Sign up">  </input>

            </div>
        </form>


    </div>




</section>

</body>


</html>
