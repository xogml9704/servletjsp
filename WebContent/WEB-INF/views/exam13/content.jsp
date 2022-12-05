<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="card m-2">
	<div class="card-header">
		게시물 목록
	</div>
	<div class="card-body">
		<div class="mb-2"><a href="WriteController" class="btn btn-info btn-sm">글쓰기</a></div>
		<table class="table table-sm table-bordered">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>글쓴이</th>
					<th>조회수</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="6" class="text-center">
						<div>
							<a href="#" class="btn btn-outline-primary btn-sm">처음</a>
							<a href="#" class="btn btn-outline-info btn-sm">이전</a>
							<a href="#" class="btn btn-outline-success btn-sm">1</a>
							<a href="#" class="btn btn-danger btn-sm">2</a>
							<a href="#" class="btn btn-outline-success btn-sm">3</a>
							<a href="#" class="btn btn-outline-success btn-sm">4</a>
							<a href="#" class="btn btn-outline-success btn-sm">5</a>
							<a href="#" class="btn btn-outline-info btn-sm">다음</a>
							<a href="#" class="btn btn-outline-primary btn-sm">맨끝</a>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>