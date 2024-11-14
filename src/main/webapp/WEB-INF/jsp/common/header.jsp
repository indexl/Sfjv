<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageTitle }</title>


<!-- 테일윈드CSS -->
<script src="https://cdn.tailwindcss.com"></script>
<!-- JQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
<!-- common css -->
<link rel="stylesheet" href="/resource/common.css" />



<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<div>
		<div><a href="${pageContext.request.contextPath}/">로고</a></div>
		
		<ul>
			<li><a href="${pageContext.request.contextPath}/">HOME</a></li>
			<li><a href="${pageContext.request.contextPath}/usr/article/list">LIST</a></li>
		</ul>
	</div>


	 <section>
        <div>
            <h1>${pageTitle }&nbsp;페이지</h1>
          	
     	       
        </div>
    </section>
</body>