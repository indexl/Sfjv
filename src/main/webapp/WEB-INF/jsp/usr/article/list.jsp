<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<c:set var="pageTitle" value="목록" />

<%@ include file="/WEB-INF/jsp/common/header.jsp" %>

<section>
	<div class="table-container">
		<table class="style-table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="article" items="${articles }">
					<tr>
						<td>${article.getId() }</td>
						<td><a href="detail?id=${article.getId() }">${article.getTitle() }</a></td>
						<td>${article.getLoginId() }</td>
						<td>${article.getRegDate().substring(2,16) }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</section>

<%@ include file="/WEB-INF/jsp/common/footer.jsp" %>