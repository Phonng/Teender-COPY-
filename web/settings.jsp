<%-- 
    Document   : settings
    Created on : Mar 26, 2018, 7:48:43 PM
    Author     : emsnguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Settings</title>
        <link href="css/settings.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <h1>Thay đổi cài đặt</h1>
        </header>

        <div id="form">

            <div class="fish" id="fish"></div>
            <div class="fish" id="fish2"></div>

            <form id="setting" method="POST">
<!--                <input type="hidden" value="${info.username}" name="username"/>
                <input type="hidden" value="${info.password}" name="password"/>
                <input type="hidden" value="${info.userID}" name="userID"/>-->
                <div class="formgroup" id="name-form">
                    <label for="name">Tên hiển thị</label>
                    <input type="text" id="name" name="nickname" value="${info.nickname}" />
                </div>

                <div class="formgroup" id="email-form">
                    <label for="date">Ngày sinh</label>
                    <input type="date" id="email" name="birthDate" value="${info.birthDate}" />
                </div>

                <div class="formgroup" id="message-form">
                    <label for="message">Giới thiệu đôi nét về bản thân</label>
                    <textarea id="message" name="aboutme"></textarea>
                </div>

                <div class="formgroup" id="name-form">
                    <label for="address">Địa chỉ</label>
                    <input type="text" id="address" name="address" value="${info.address}"/>
                </div>

                <div class="formgroup" id="name-form">
                    <label for="work">Nghề nghiệp</label>
                    <input type="text" id="work" name="work" value="${info.work}"/>
                </div>
                <div style="background-color: #98d4f3; width: 100%; margin: 0; padding: 0">
                    <div class="formgroup" id="name-form">
                        <label for="online">Đang online</label>
                    </div>
                    <label class="container">
                        <input type="radio" id="online" name="online" value="yes"
                               <c:if test="${info.online}">
                                   checked="checked"
                               </c:if>
                               /> Có
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">
                        <input type="radio" id="online" name="online" value="no"
                               <c:if test="${!info.online}">
                                   checked="checked"
                               </c:if>
                               /> Không
                        <span class="checkmark"></span>
                    </label>
                    ${radioError}

                    <div class="formgroup" id="name-form">
                        <label for="preferMale">Giới tính muốn tìm kiếm</label>
                    </div>
                    <label class="container">
                        <input type="radio" id="preferMale" name="preferMale" value="male"
                               <c:if test="${info.preferMale}">
                                   checked="checked"
                               </c:if>
                               /> Nam
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">
                        <input type="radio" id="preferMale" name="preferMale" value="female"
                               <c:if test="${!info.preferMale}">
                                   checked="checked"
                               </c:if>
                               /> Nữ
                        <span class="checkmark"></span>
                    </label>
                    ${radioError}
                    <input type="submit" value="Lưu thay đổi" />
                </div>

            </form>
        </div>
    </body>
    <script src="js/settings.js" type="text/javascript"></script>
</html>
