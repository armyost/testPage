<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String sId;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션 삭제하기</title>
</head>
<body>

    <%

    session.invalidate();
    response.sendRedirect("test.jsp");

    %>

<center><h3>[ 세션을 삭제하는 예제 ]</h3></center>
<hr/>
세션이 삭제 되었습니다.
<br><br><br><br>

<hr/>

GetSession 수행하러 가기
<form action ="<%= request.getContextPath()%>/getsession.jsp" method="post">
    <button type="submit" name="getsessionSbm"> 이동</button> <br>
</form>

<hr/>
<br><br>
처음으로 돌아가기
<form action ="<%= request.getContextPath()%>/test.jsp" method="post">
    <button type="submit" name="testSbm"> 이동</button> <br>
</form>



</body>
</html>
