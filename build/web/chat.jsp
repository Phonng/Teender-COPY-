<%-- 
    Document   : chat
    Created on : Mar 26, 2018, 2:26:53 PM
    Author     : emsnguyen
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!DOCTYPE html>
<link href="css/chat.css" rel="stylesheet" type="text/css"/>
<script src="js/chat.js" type="text/javascript"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nhắn tin</title>
    </head>

    <body>
        <%--<h1>
            <a href="home2.jsp">Trở về trang chủ</a>
        </h1>
        <div>
            <ul>
                <%
                    Hashtable<Integer, String> friends = (Hashtable<Integer, String>) request.getSession().getAttribute("friends");
                    for (Map.Entry<Integer, String> en : friends.entrySet()) {
                        Integer key = en.getKey();
                        String val = en.getValue();
                %>
                    <li>
                        <a href="message?user2ID=<%=key%>"><%=val%></a>
                    </li>
                <%
                    }
                %>
            </ul>
        </div>
        <div>
            <form action="message" method="POST" id="form" style="padding-top: 100px">
                <center>
                    <c:forEach items='${messages}' var='m'>
                        <input type="text" value="${m.content}">
                        <br>
                    </c:forEach>
                        
                    <br/>
                    <input type="hidden" value="${user2ID}" name="user2ID"/>
                    <input type="text" id="messageText" size="50" name="content"/>
                    <input type="submit" value="Gửi"/>
                </center>

            </form>
</div>--%>

        <div class="chat_window">
            <div class="top_menu">
                <div class="buttons">
                    <div class="button close">

                    </div>
                    <div class="button minimize">

                    </div>
                    <div class="button maximize">

                    </div>

                </div>
                <div class="title">Chat</div>

            </div>
            <ul class="messages">

            </ul>
            <div class="bottom_wrapper clearfix">
                <div class="message_input_wrapper">
                    <input class="message_input" placeholder="Type your message here..." />
                </div><div class="send_message">
                    <div class="icon"></div>
                    <div class="text">Send</div>

                </div>

            </div>

        </div>
        <div class="message_template">
            <li class="message">
                <div class="avatar">

                </div>
                <div class="text_wrapper">
                    <div class="text">

                    </div>

                </div>
            </li>

        </div>
    </body>

</html>
