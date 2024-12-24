<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>쿠키 정보 가지고 오기</h1>
<hr>
    <%
         Cookie[] cookies = request.getCookies();
         if (cookies != null) {
             for (Cookie cookie : cookies) {
                 if (!cookie.getName().equals("JSESSIONID")) {
                     out.println(cookie.getName() + " " + cookie.getValue());
                 }
                 if (cookie.getName().equals("adTracker")) {
                     out.println("광고를 클릭하셨군요.!!!");
                     out.println("고객님의 정보는 " + cookie.getValue() + "님입니다.");
                 }
             }
         }


    %>
</body>
</html>
