<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function inputCheck(){
	let btitleInput = document.form.btitle.value;
	let bcontentInput = document.form.bcontent.value;
	if(!btitleInput){
		alert("제목을 입력해주세요.");
		return false;
	}else if(!bcontentInput){
		alert("내용을 입력해주세요.")
		return false;
	}else{
		return true;
	}
}
</script>

</head>
<body>
   <form action="/qnaboard/write" name="form" method="post" onsubmit="return inputCheck()">
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		
			<tr>
				<td>제목</td>
				<td> <input type="text" name="btitle" size="50" autocomplete="off"> </td>
			</tr>
			<tr>
				<td>내용</td>
				<td> <textarea name="bcontent" rows="10" cols="50" autocomplete="off"></textarea> </td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="/qnaboard/list2">목록보기</a></td>
			</tr>
			<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
		
	</table>
</form>
</body>
</html>