<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 | 작품등록</title>
<!-- 공백 방지 -->
<script type="text/javascript">
		window.onload = () => {
		    
		    let sbmBtn = document.querySelector("#sbmBtn"); 
		
		    sbmBtn.onclick = () =>{
		        if(document.getElementById("productname").value == ""){
		            alert("작품명 누락"); //유효성 검사
		        }else if(document.getElementById("artist").value == ""){
		            alert("작가명 누락");
		        }else if(document.getElementById("imgname").value == ""){
		            alert("작품사진 누락");
		        } else if(document.getElementById("productsize").value == ""){
		            alert("사이즈 누락");
		        } else if(document.getElementById("price").value == ""){
		            alert("가격 누락");
		        } else if(document.getElementById("quantity").value == ""){
		            alert("재고 누락");
		        } else{
		            //모든 항목이 채워졌을 경우
		            alert("등록 완료");
		            document.getElementById("insertProduct").submit();
		        }
		
		    };
		
		    };
		        
   </script>
</head>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<!-- "등록"을 누르면 /write 실행 -->
		<form id="insertProduct" action="insertProductFinish" method="post">
			<tr>
				<td>작품명</td>
				<td><input id="productname" type="text" name="productname"
					size="50"></td>
			</tr>
			<tr>
				<td>작가</td>
				<td><input id="artist" type="text" name="artist" size="50"></td>
			</tr>
			<!-- AWS 파일 업로드
			<tr>
				<td>작품사진</td>
				<td>
				<form:form action="@{/product/upload}" method="post"
						enctype="multipart/form-data">
						<input id="imgname" type="file" name="imgname">
				</form:form></td>
			</tr> -->
			<tr>
				<td>작품설명</td>
				<td><textarea id="productcontent" type="text" name="productcontent" rows="20"></textarea></td>
			</tr>
			<tr>

				<td>사이즈</td>
				<td><input id="productsize" type="text" name="productsize"
					size="50"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input id="price" type="number" name="price" size="50">원</td>
			</tr>
			<tr>
				<td>재고</td>
				<td><input id="quantity" type="number" name="quantity"
					size="50">개</td>
			</tr>
			<tr>
				<!-- submit을 누르면 Controller에서 정의한 aws API를 타게 됨 -->
				<td colspan="2"><input id="sbmBtn" type="submit" value="등록하기">
					&nbsp;&nbsp; <a href="listProduct">목록으로</a></td>
			</tr>
		</form>
	</table>

</body>
</html>