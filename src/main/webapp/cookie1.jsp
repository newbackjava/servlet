<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 쿠키는 서버에서 클라이언트인 브라우저에 보내는 문자 정보 --%>
<%-- response객체를 활용함. 자바의 객체, 자바가 필요.!! --%>
<%
  //자바가 들어가는 부분..스크립트릿
  //1. 쿠키객체 만들기(키, 값의 쌍으로 만든다.)
  Cookie cookie = new Cookie("name", "hong");
  //2. 쿠키의 유효기간 + 도메인별 설정 등
  cookie.setMaxAge(1000000000);
  //cookie.setMaxAge(0);으로 전송하면 쿠키 삭제됨.
  //3. 쿠키를 브라우저에 전송
  //HttpServletResponse response = new HttpServletResponse() {};
  //하나의 요청당 request, response객체가 톰킷의 서블릿엔지에 의해 생성됨.
  response.addCookie(cookie);

%>
</body>
</html>
