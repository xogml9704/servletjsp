<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="card m-2">
	<div class="card-header">
		content.js
	</div>
	<div class="card-body">
		<h4>GET 방식</h4>
		<a href="${pageContext.request.contextPath}/exam02/GetController?param1=value1&param2=value2" class="btn btn-info btn-sm">링크로 이동</a>
		<hr/>
		<form method="get" action="${pageContexti.request.contextPath}/exam02/GetController">
		   <input type="text" name="param3" value="value3"/> <br/>
		   <input type="text" name="param4" value="value4"/> <br/>
		   <input type="submit" value="Form으로 제출" class="btn btn-info btn-sm"/>
		</form>	
		<hr/>
       <h4>POST 방식</h4>
		<form method="post" action="${pageContexti.request.contextPath}/exam02/PostController">
		   <input type="text" name="param3" value="value5"/> <br/>
		   <input type="text" name="param4" value="value6"/> <br/>
		   <input type="submit" value="Form으로 제출" class="btn btn-info btn-sm"/>
		</form>	
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
