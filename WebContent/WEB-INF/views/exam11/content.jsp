<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="card m-2">
	<div class="card-header">
		content.jsp
	</div>
	
	<div class="card-body">
		01. ${5} <br/>
		02. ${"홍길동"} <br/>
		03. ${2+5} <br/>
		
		h4 class="mt-3">산술 연산자</h4>
		04. ${7 mod 3} <br/>
		05. ${7 % 3} <br/>
		
		<h4 class="mt-3">논리 연산자</h4>
		06. ${true && false} <br/>
		07. ${true and false} <br/>
		
		08. ${true || false} <br/>
		09. ${true or false} <br/>
		
		10. ${!true} <br/>
		11. ${not true} <br/>
		
		<h4 class="mt-3">비교 연산자</h4>
		12. ${2<5}, ${2 lt 5} <br/>
		13. ${2>5}, ${2 gt 5} <br/>
		14. ${2 <= 5}, ${2 le 5}; <br/>
		15. ${2 >= 5}, ${2 ge 5}; <br/>
		16. ${2 != 5} <br/>
		
		17. ${empty null} <br/>
		18. ${empty ""} <br/>
		
		<h4 class="mt-3">pageContext를 이용해서 request, response, session의 Getter 리턴값 열기</h4>
		19. ${pageContext.request.contextPath} <br/>
		
		<h4 class="mt-3">request -> session -> application 범위 순으로 저장된 이름의 값을 출력</h4>
		20. ${user.userId}, ${user.userName};
		21. ${board.bno}, ${board.btitle}, ${board.bcontent} <br/>
		22. ${info} <br/>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>