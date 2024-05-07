<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script> <!-- jquery 라이브러리 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
    background-color: #666;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-container {
	background-color: #fff;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 400px;
    text-align: center;
}

h1 {
	font-size: 36px;
    margin-bottom: 30px;
    color: #333;
}

input[type="text"],
input[type="password"] {
	width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
	background-color: #666;
    color: white;
    padding: 14px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
}

	input[type="submit"]:hover {
background-color: #45a049;
}

.options {
	display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
    font-size: 14px;
}

.options a {
	text-decoration: none;
	color: #666;
}

.checkbox {
	display: inline-block;
	margin-right: 10px;
}

</style>




</head>
<body>
	 <div class="login-container">
        <h1>Blossom</h1>
        <form action="/blossom/member/singin" method="POST">
            <input type="text" name="memberId" placeholder="아이디" id="memberId" required>
            <input type="password" name="memberPw" placeholder="비밀번호" id="memberPw" required>
            <input type="submit" value="로그인">
        </form>
        <div class="options">
            <label for="remember" class="checkbox">
                <input type="checkbox" id="remember"> 아이디 저장
            </label>
            <div>
                <a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="#">회원가입</a>
            </div>
        </div>
    </div>

</body>
<script type="text/javascript">
	var memberId = $("#memberId").val();
	var memberPw = $("#memberPw").val();
	console.log(memberId);
	console.log(memberPw);
	
	
</script>
</html>