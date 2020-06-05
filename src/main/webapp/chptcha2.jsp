<%@ page contentType="text/html; charset=utf-8" language="java" %>


<html>
<head>
    <title>Google recaptcha</title>
    <script src='https://www.google.com/recaptcha/api.js' async defer></script>

    <script>
        function onSubmit(token) {
            document.getElementById("loginfrm").submit();

        }
    </script>
</head>
<body>
<h1>구글 reCaptcha : invisible</h1>


<form method="post" id="loginfrm" action="index.jsp">
    <div>아이디 : <input type="text" id="userid" name="userid"></div>

    <div>비밀번호 : <input type="password" id="passwd" name="passwd"></div>

    <button class="g-recaptcha"
         data-sitekey="6LfOlQAVAAAAAGhs3U6a3COk7zHn1hz4Z7b9jPeB"
        data-callback="onSubmit">로그인하기</button>
</form>

</body>
</html>
<!--
    invisible recaptcha
    사용자가 captcha를 클릭할 필요 없이
    사용자의 행동을 분석해서 자동으로 로봇인지
    사람인지 구분해서 이미지 선택창이 뜨도록 설정
-->