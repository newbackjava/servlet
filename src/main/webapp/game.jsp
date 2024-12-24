<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>

        function btnClick(){
            //입력한 값을 가지고 와서
            let gameName = document.getElementById("gameName").value;
            let gameType = document.getElementById("gameType").value;

            //입력하지 않았으면 보내지 말자!!
            if(gameName.length > 0 && gameType.length > 0) {
                //get방식으로 url로 보내자.!!
                //http://localhost:8888/game?gameName=스마일게임&gameType=멀티롤
                location.href = "game?gameName=" + gameName + "&gameType=" + gameType;
            }else{
                alert("입력이 완료되지 않았음. 입력을 해주세요.");
            }


        }
    </script>
</head>
<body>
<h1>Game Form</h1>
<h3>자바 스크립트로 GET요청</h3>
gameName : <input type="text" id="gameName" value="스마일게임" required><br>
gameType : <input type="text" id="gameType" value="멀티롤" required><br>
<button onclick="btnClick()" type="button">자바 스크립트로 GET요청</button>
<hr color="blue">
</body>
</html>
