<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageTitle }</title>
<!-- 테일윈드CSS -->
<script src="https://cdn.tailwindcss.com"></script>
<!-- 데이지 UI -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css" rel="stylesheet" type="text/css" />
<!-- JQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
<!-- common css -->
<link rel="stylesheet" href="/resource/common.css" />
</head>
<body class="bg-black">
	<div class="h-20 flex container mx-auto text-3xl bg-green-600 text-black">
		<div>
			<a class="h-full px-3 flex items-center font-bold hover:text-white" 
				href="${pageContext.request.contextPath}/">로고</a>
		</div>
		<div class="grow"></div>
		<ul class="flex">
		    <li class="link link-hover">
		        <a class="h-full px-3 flex items-center hover:text-white" 
		            href="${pageContext.request.contextPath}/">HOME</a>
		    </li>
		    <li class="link link-hover">
		        <a class="h-full px-3 flex items-center hover:text-white" 
		            href="${pageContext.request.contextPath}/usr/article/list?boardId=1">NOTICE</a>
		    </li>
		    <li class="link link-hover">
		        <a class="h-full px-3 flex items-center hover:text-white" 
		            href="${pageContext.request.contextPath}/usr/article/list?boardId=2">FREE</a>
		    </li>
		    <c:if test="${rq.getLoginedMemberId() == -1 }">
		        <li class="link link-hover">
		            <a class="h-full px-3 flex items-center hover:text-white" 
		                href="${pageContext.request.contextPath}/usr/member/login">LOGIN</a>
		        </li>
		        <li class="link link-hover">
		            <a class="h-full px-3 flex items-center hover:text-white" 
		                href="${pageContext.request.contextPath}/usr/member/join">회원가입</a>
		        </li>
		    </c:if>
		    <c:if test="${rq.getLoginedMemberId() != -1 }">
		        <li class="link link-hover">
		            <a class="h-full px-3 flex items-center hover:text-white" 
		                href="${pageContext.request.contextPath}/usr/member/doLogout">LOGOUT</a>
		        </li>
		    </c:if>
		</ul>
	</div>
	<section class="my-4 text-2xl">
		<div class="container mx-auto bg-green-100 p-4 rounded shadow">
			<div class="font-bold text-green-600">${pageTitle } 페이지</div>
		</div>
	</section>
</body>
</html>