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
    <link rel="stylesheet" href="../../resources/css/product_info.css">
    <link rel="stylesheet" href="../../resources/css/signup__style.css">
    <link rel="stylesheet" href="../../resources/css/login__style.css">
    <script
            src="https://kit.fontawesome.com/bb830b2dcb.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<!--���� hearder �ߺ� ���ٻ��� !-->
<%@include file="header.jsp" %>

<div class="product__buy">
    <div class="brand__info">
        <img src="../../resources/img/brand/<c:out value="${brand.name}"/>_logo.png" alt=""class="logo__product">
    </div>
    <div class="buy__info">
        <div class="info__pic">
            <div class="pic__outside makingcenter">
                <img src="../../resources/img/goods/<c:out value="${merchan.name}"/>.png" alt=""  class="pic__inside" >
            </div>
            <div class="product_title">
                <p class="title_ones">
                    <c:out value="${merchan.name}"/>
                </p>
                <button href="" class="save">
                    <i class="far fa-bookmark"></i>
                </button>
            </div>

        </div>
        <div class="info__kotoba">

            <form action="/merchan/buy" id="form">
                <div class="choice__pro">
                    <div class="size__choice">
                        <h1 class="choice__title">Condition :</h1>
                        <div style="color:white;"class="choice__click" >
                            <p>
                                New with box
                            </p>
                        </div>

                    </div>
                    <div class="size__choice">
                        <h1 class="choice__title">Size Choice :</h1>
                        <div class="choice__click">
                            <select name ="size" style= "    font-family: 'Pangolin', cursive;
                                " data-able="no" class="buyable">
                                <option value="">--Please choose an option--</option>
                                <option value="XXS">XXS</option>
                                <option value="XS">XS</option>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                                <option value="XL">XL</option>
                                <option value="XXL">XXL</option>
                                <option value="XXXL">XXXL</option>
                            </select>

                        </div>
                    </div>
                    <div class="size__choice">
                        <h1 class="choice__title">Quantity :</h1>
                        <div style="color:white;">
                            <input class="qtyInput" type="text" aria-describedby="w1-16-_errMsg" autocomplete="off" size="2" value="1" name="quantity" id="qtyTextBox" isvalid="false" disabled="disabled" >
                        </div>

                    </div>
                    <div class="nedan__choice">
                        <h1 class="nedan__title">List price : </h1>
                        <div class="nedan__info ms-orp">US $<c:out value="${merchan.price}"/></div>
                    </div>
                    <div class="nedan__choice">
                        <h1 class="nedan__title">You save : </h1>
                        <div class="nedan__info ms-as-red">US $0</div>
                    </div>
                    <div class="nedan__choice">
                        <h1 class="nedan__title">Now : </h1>
                        <div class="nedan__info actPanel">US $<c:out value="${merchan.price}"/> </div>
                    </div>

                </div>
                <div class="nedan__pro">
                    <div class="buygogo">
                        <input href="#" type="submit" class=" disabled2 submit_button_notwork2" style="font-size:20px" value="Buy it now">
                    </div>
                </div>
            </form>

        </div>

    </div>
    <div class="simular_info">
        <div class="simular__title" style="color:white">
            <p class="title__brand"><strong class="brandname">Nike</strong>`s Similar sponsored items</p>
            <button class="brand_list_edit">
                <span style="font-weight: 1000; margin-right:0.5vw">More</span>
                <i class="fas fa-chevron-right" aria-hidden="true"></i>
            </button>
        </div>
        <div class="product_list">
            <c:forEach var="element" items="${merchanList}" varStatus="stat" begin="0" end="3">
            <div class="product_item">
                <div class="item__pic">
                    <a href="/merchan/info?merchanOid=<c:out value="${element.merchanOid}"/>">
                        <div class="pic__real makingcenter">
                            <img src="../../resources/img/goods/<c:out value="${element.name}"/>.png" alt="" style="width:60%" >
                        </div>
                    </a>
                </div>
                <div class="item__brandandsave">
                    <img src="../../resources/img/logo/<c:out value="${brandList.get(stat.index)}"/>_logo.png" alt=""style="width:30%" class="pic_one">
                    <button href="" class="save" style="font-size:22px">
                        <i class="far fa-bookmark"></i>
                    </button>
                </div>
                <div class="item__nedan">
                    <div class="shit_info">
                        <h3 class="__product_name"><c:out value="${element.name}"/>
                        </h3>
                        <h3 class="__nedan" style="margin-top:1.2vw; font-size: 20px;">$253
                        </h3>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>

<script src="../../resources/js/slidesearch.js" ></script>
<script src="../../resources/js/product_info.js" ></script>

</body>

</html>