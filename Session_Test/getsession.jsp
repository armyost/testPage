<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션에 저장된 값 얻어오기</title>
</head>
<body>
<center><h3>[ 세션에 값을 얻어오는 예제 ]</h3></center>
<hr/>
얻어온 세션에 대한 정보는 다음과 같습니다.
<hr/>
<%
    Object obj_myId = session.getAttribute("MyID");
    Object obj_statusData = session.getAttribute("StatusData");

    String get_myId = (String)obj_myId;
    String get_statusData = (String)obj_statusData;

    long creationTime = session.getCreationTime();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
	String creationTimeString = dateFormat.format(new Date(creationTime));
    
    long accessedTime = session.getLastAccessedTime();
    String accessedTimeString = dateFormat.format(new Date(accessedTime));

    
    out.println("세션 생성시간 → " + creationTimeString + "<hr/>");
    out.println("마지막으로 세션에 접근한 시간 → " + accessedTimeString + "<hr/>");
    out.println("세션 유효시간 → " + session.getMaxInactiveInterval() + "<hr/>");


    out.println("설정된 세션값(SessionId) → " + session.getId()+ "<br>");
    out.println("설정된 세션값(MyID) → " + get_myId+ "<br>");
    out.println("설정된 세션값(StatusData)  → " + get_statusData+ "<br></hr>");


%>
<hr>
현재 해당 응답을 제공하는 서버 정보는 다음과 같습니다.<br/> 
<%
    out.println("getLocalAddr():"+request.getLocalAddr()+"<br/>");
    out.println("getLocalName():"+request.getLocalName()+"<br/>");
    out.println("getLocalPort():"+request.getLocalPort()+"<br/>");
    out.println("getServerName():"+request.getServerName()+"<br/>");
    out.println("getServerPort():"+request.getServerPort()+"<br/>");
%>
   
<hr/>
<br><br>
처음으로 돌아가기
<form action ="<%= request.getContextPath()%>/test.jsp" method="post">
    <button type="submit" name="testSbm"> 이동</button> <br>
</form>

<br>


</body>
</html>
