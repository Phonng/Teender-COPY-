<%-- 
    Document   : main
    Created on : Mar 22, 2018, 10:31:34 AM
    Author     : emsnguyen
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Chat</title>
        <link rel="stylesheet" type="text/css" href="css/choose.css">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <%
        int index = (Integer) request.getAttribute("index");
    %>
    <body>
        <div class="tbg">
            <div class="theader">
                <i class="fa fa-cog" aria-hidden="true"></i>
                <i class="fa fa-comments" aria-hidden="true"></i>
                <div class="tlogo">
                    <img src="img/logo.jpg" alt="logo"/>
                </div>
            </div>
            <div class="tbgwrap">
                <div class="tphoto">
                    <!--<img src="http://www.amicnews.com/wp-content/uploads/2015/04/Sunglasses-Trends-for-Summer-2015.jpg" title="tphoto" alt="Tinder Photo" />-->
                    <!--<img src="img/logo.jpg" alt="logo"/>-->
                    <!--<img src="img/avatar.jpg" alt="avatar"/>-->
                    <img src="img/team/team<%=index%>.jpg" alt=""/>
                    <div class="tname">Phong, <span class="age">18</span></div>
                    <div class="tinfo"><i class="fa fa-book" aria-hidden="true"> 0</i><i class="fa fa-users" aria-hidden="true"> 0</i></div>
                </div>
                <div class="tcontrols">
                    <div class="tno">
                        <i class="fa fa-times" aria-hidden="true" onclick="window.location.href = 'ignore?ignoredID=${requestScope.index}&doID=${sessionScope.userID}';"></i>
                    </div>
                    <div class="ti"><i class="fa fa-info" aria-hidden="true"></i></div>
                    <div class="tyes"><i class="fa fa-heart" aria-hidden="true" onclick="window.location.href = 'like?likedID=${requestScope.index}&doID=${sessionScope.userID}';"></i></div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>