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
<title>sing up</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5; /* 전체 배경색을 하얀색으로 설정 */
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #343a40!important; /* 네이비 색과 하얀색이 섞인 배경색 */
    color: white; /* 텍스트 색상을 흰색으로 설정 */
    border-radius: 8px;
}

h1 {
    text-align: center; 
    margin-laft: 10px;
}

.mr-2 {
	display: inline-block; /* 이미지를 인라인 요소로 설정하여 텍스트와 동일한 라인에 표시 */
	vertial-align: meddle; /* 이미지의 수직 정렬을 중앙에 맞춤 */
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
}

input[type="text"],
input[type="password"],
input[type="email"],
input[type="tel"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 12px;
    background-color: #ff6600; /* 주황색 배경색 */
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #cc5500; /* 주황색 조금 진한 색으로 변경 */
}
	
</style>
</head>
<body>
<div class="container">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2">
        	<path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
        	<circle cx="12" cy="13" r="4"></circle>
        </svg>
        <h1>Blossom</h1>
        <form action="submit_form.php" method="POST">
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">비밀번호 확인</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
            </div>
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="nickname">닉네임</label>
                <input type="text" id="nickname" name="nickname" required>
            </div>
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">핸드폰 번호</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <button type="submit">가입하기</button>
        </form>
    </div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
<script>
	new daum.Postcode({
    	onclose: function(state) {
    	 	//state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
    		if(state === 'FORCE_CLOSE'){
    	 	//사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.
         	} else if(state === 'COMPLETE_CLOSE'){
         	//사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
         	//oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
 		 	}
    	}
	});
</script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               	var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
              	//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
               	// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                	} else {
                    	document.getElementById("extraAddress").value = '';
                	}
                	// 우편번호와 주소 정보를 해당 필드에 넣는다.
                	document.getElementById('postcode').value = data.zonecode;
                	document.getElementById("address").value = addr;
                	// 커서를 상세주소 필드로 이동한다.
                	document.getElementById("detailAddress").focus();
                	/* $('#detailAddress').blur(function(){
                	var add1 = $('#postcode').val(); // 우편번호
	   				var add2 = $('#address').val(); // 주소
	    			var add3 = $('#detailAddress').val(); // 상세주소
	    			var add4 = $('#extraAddress').val(); // 참고항목
	    			var memberAddress = add1 + add2 + add3 + add4;
					// add1,2,3,4를 memberAddress에 넣는다
					document.getElementById("memberAddress").value = memberAddress;
					console.log(memberAddress);
					addressCheck = true;
                	if(memberAddress !== ''){
                		addressCheck = true;
                		$('#error_address_msg').text('');
                	} else {
                		$('#error_address_msg').text('사용 불가능한 이메일입니다.');
               			$('#error_address_msg').append("<br>");
               			$('#error_address_msg').css('color', 'red');
                	}
                	}); */
           		}
       		}).open();
   		}
</script>
</html>