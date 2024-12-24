<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2024-12-23
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (session.getAttribute("check") != null){ //세션설정 O
        out.println("<h1>현재 체크상태는 ok입니다.</h1>");
    }else{ //세션이 설정이 X
        out.println("check <input type='checkbox'>");
    }
%>
</body>
</html>
