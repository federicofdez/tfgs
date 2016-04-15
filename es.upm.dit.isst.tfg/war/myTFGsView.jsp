<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sistema de gestión de TFGs</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<c:if test="${param.error ne null}">
		<p>----ERROR EN FORMULARIO: ${param.error}----</p>
	</c:if>
	
	<c:choose>
		<%-- PERFIL: ALUMNO --%>
		<c:when test="${isUserStudent==true}">
			<jsp:include page="student.jsp" />
		</c:when>
		<%-- PERFIL: PROFESOR --%>
		<c:otherwise>
			<jsp:include page="professor.jsp" />
		</c:otherwise>
	</c:choose>
</body>
</html>