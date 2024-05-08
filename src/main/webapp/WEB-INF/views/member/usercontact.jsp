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
<title>singUP step2</title>
<style type="text/css">
body {
    font-family: 'Arial', sans-serif;
    background-color: #f5f5f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: #ffffff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    max-width: 500px;
    width: 90%;
}

.header {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 30px;
}

.icon {
    width: 50px;
    height: 50px;
    margin-right: 10px;
}

h1 {
    font-size: 24px;
    color: #333366;
    margin: 0;
}

h2 {
    font-size: 20px;
    color: #333366;
    margin-bottom: 20px;
}

.form-section {
    margin-bottom: 30px;
}

.form-group {
    margin-bottom: 20px;
    text-align: left;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #333366;
}

input[type="text"],
input[type="password"],
input[type="email"],
input[type="tel"] {
    width: 100%;
    padding: 12px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
}


button {
	width: 100%;
    padding: 12px;
    background-color: #333366;
    color: #ffffff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
	background-color: #555599;
}
</style>
</head>
<body>
	<div class="container">
        <div class="header">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon">
                <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
                <circle cx="12" cy="13" r="4"></circle>
            </svg>
            <h1>Blossom 회원가입</h1>
        </div>
        <div class="form-section">
            <h2>Step 2: 연락처 입력</h2>
                <div class="form-group">
                    <label for="phone">핸드폰</label>
                    <input type="tel" id="phone" name="memberPhone" placeholder="번호를 입력해주세요" required>
                	<div id="error_member_phone"></div>
                </div>
                <div class="form-group">
                    <label for="email">이메일</label>
                    <input type="email" id="mail" name="memberEmail" placeholder="이메일을 입력해주세요" required>
                	<div id="error_member_email"></div>
                </div>
                <div class="form-group">
                    <label for="id">아이디</label>
                    <input type="text" id="id" name="memberId" placeholder="아이디를 입력해주세요" required>
                </div>
            <form action="/blossom/member/useraddress" method="GET">
				<button type="submit" onclick="step2confirm()">다음</button>	
            </form>
        </div>
	</div>
</body>
</html>