<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="card m-2">
	<div class="card-header">
		게시물 쓰기
	</div>
	<div class="card-body">
		<div>
			<div>
				<div>
					<p>
						<span>번호:</span> 
						<span>${board.bno}</span>
					</p>

					<p>
						<span>제목:</span> 
						<span>${board.btitle}</span>
					</p>

					<p>
						<span>글쓴이:</span> 
						<span>${board.bwriter}</span>
					<p>
					<p>
						<span>조회수:</span> 
						<span>${board.bhitcount}</span>
					<p>
					<p>
						<span>날짜:</span> 
						<span><fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd HH.mm.ss" /></span> <br />
					</p>
					<c:if test="${board.bfileName != null}">
						<P>
							<span>첨부:</span>
							<span>
								<a href="DownloadAttachController?bno=${board.bno}">
									<img src="DownloadAttachController?bno=${board.bno}" width="100"/>
								</a>
							</span><br />
						</P>
					</c:if>
				</div>

				<div>
					<span class="title">내용:</span> <br />
					<textarea style="width: 100%" readonly>${board.bcontent}</textarea>
				</div>
			</div>
		</div>
		<form method="post" action="UpdateController?bno=${board.bno}" enctype="multipart/form-data">
			<div class="form-group">
				<label for="btitle">Title</label> 
				<input type="text" class="form-control" id="btitle" name="btitle">
			</div>
			<div class="form-group">
				<label for="bcontent">Content</label> 
				<textarea rows="5" cols="50" id="bcontent" name="bcontent" class="form-control"></textarea>
			</div>
			<div class="form-group">
				<label for="bwriter">Writer</label> 
				<input type="text" class="form-control" id="bwriter" name="bwriter">
			</div>
			<div class="form-group">
				<label for="battach">Attach</label> 
				<input type="file" class="form-control" id="battach" name="battach">
			</div>
			<button type="submit" class="btn btn-info btn-sm">게시물 수정</button>
		</form>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>