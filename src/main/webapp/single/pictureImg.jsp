<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String path = application.getRealPath("/")+"upload/";
String filename = null;

MultipartRequest multi = new MultipartRequest(request, path, 10*1024*1024, "utf-8");
filename = multi.getFilesystemName("picture"); // upload 폴더에 저장
%>
<script>
const img = opener.document.getElementById("pic")
img.src="<%=request.getContextPath()%>/upload/<%=filename%>"

<!-- form에 이미지 띄우기 -->
opener.document.f.picture.value="<%=filename%>" 
self.close()
</script>
</body>
</html>