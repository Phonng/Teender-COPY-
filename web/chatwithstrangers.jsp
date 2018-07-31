<%-- 
    Document   : default
    Created on : Mar 26, 2018, 11:05:10 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%--<script type="text/javascript">
            var  webSocket = new WebSocket("ws://localhost:8080/TeenderWebApp/endpoint");
            webSocket.onmessage = function processMessage(message) {
                var jsonData = JSON.parse(message.data);
                console.log("websocket on message");
                console.log("messageText.value: " + messageText.value);
                if (jsonData.message !== null) {
                    messageTextArea.value += jsonData.message + "\n";
                }
            };
            function sendMessage() {
                webSocket.send(messageText.value);
                messageText.value = "";
            }
</script>--%>
        <script src="js/chatwithstrangers.js" type="text/javascript"></script>
        <link href="css/chatwithstrangers.css" rel="stylesheet" type="text/css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <h1>Tâm sự với người lạ</h1>
        <%--<textarea id="messageTextArea" 
                  readonly="readonly"
                  rows="10" cols="45">
            
        </textarea>
        <br/>
        <input type="text" id="messageText" size="50"/>
<input type="button" value="Send" onclick="sendMessage();"/>--%>
        <div class="col-sm-3 col-sm-offset-4 frame">
            <ul></ul>
            <div>
                <div class="msj-rta macro" style="margin:auto">                        
                    <div class="text text-r" style="background:whitesmoke !important">
                        <input class="mytext" placeholder="Type a message"/>
                    </div> 
                </div>
            </div>
        </div> 
         </body>
</html>
