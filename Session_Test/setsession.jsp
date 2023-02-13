<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String str1 = request.getParameter("str1");
    String str2 = request.getParameter("str2");
    boolean sNew;
    int sTime;
    String sId;

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JVM에 세션 설정하기</title>
</head>
<body>

    <%
    /* Session ID */
    sId = session.getId();


    /* 세션 Attribute 설정 */
    session.setAttribute("MyID", str1);
    session.setAttribute("StatusData", str2);


    %>

<center><h3>[ JVM에 세션 값을 설정하는 예제 ]</h3></center>
<hr/>
JVM에 세션값을 설정하는 페이지 입니다.
<hr/>
Servlet이 Session Object에 저장된 값은 다음과 같습니다<br><br>
MyID=<%=str1%><br>
StatusData=<%=str2%><br>
Session ID=<%=sId%>
<br><br>
<br><br>
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
