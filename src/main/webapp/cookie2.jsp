<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 웹프로그램은 출력틀이 html이어야함.   --%>
<%-- 웹프로그램의 출력용 틀로 j2ee프로젝트에서는 jsp를 쓰고 있음. --%>
<%-- 템플릿(틀) 엔진 : jsp ---- 타임리프 --%>
<%
    //스크립트릿(끄적끄적 쓰는 조그마한 프로그램, 조각 프로그램)
    //jsp -- servlet전환!
    //init()초기화 -- service() --doGet, doPost요청 -- destroy()종료
    //service()안으로 다 구현되어서 들어감.
    //여기서 만들어지는 변수는 지역변수(반드시 초기화)
    //1. 브라우저에 있는 쿠키 목록을 가지고 오자. Cookie[]
    //2. 배열에서 하나씩 꺼내어 조건에 맞는 것만 쓰자.
    //   키(이름), 값의 쌍으로 되어있음.
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie : cookies){
        //PrintWriter out = response.getWriter(); 내장객체
        if (!cookie.getName().equals("JSESSIONID")) {
            out.println(cookie.getName() + " " + cookie.getValue() + "<br>");
        }
    }
%>
</body>
</html>
