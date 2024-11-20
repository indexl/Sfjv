<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- 추가 리소스들 -->
</head>
<body>
    <!-- 페이지 내용 -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- 테일윈드 CSS 및 필요한 리소스 추가 -->
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
</head>
<body class="bg-gray-100">
    <div class="container mx-auto my-10 bg-white p-6 rounded shadow">
        <h1 class="text-3xl font-bold text-center text-blue-600 mb-6">회원가입</h1>
        <form action="${pageContext.request.contextPath}/usr/member/doJoin" method="post">
            <div class="mb-4">
                <label class="block text-gray-700 font-bold mb-2" for="username">아이디</label>
                <input class="w-full px-3 py-2 border rounded" type="text" id="username" name="username" required />
            </div>
            	<div class="mb-4">
	                <label class="block text-gray-700 font-bold mb-2" for="username">비밀번호</label>
	                <input class="w-full px-3 py-2 border rounded" type="text" id="username" name="username" required />
            	</div>
            	
            	 <div class="mb-4">
	                <label class="block text-gray-700 font-bold mb-2" for="username">이름</label>
	                <input class="w-full px-3 py-2 border rounded" type="text" id="username" name="username" required />
           		 </div>
            
            <div class="mb-4">
                <label class="block text-gray-700 font-bold mb-2" for="password">생년월일</label>
                <input class="w-full px-3 py-2 border rounded" type="password" id="password" name="password" required />
            </div>
            <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">회원가입</button>
        </form>
    </div>
</body>
</html>
    
</body>
</html>
