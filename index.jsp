<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.net.InetAddress" %>

클라이언트ip <%=request.getRemoteAddr()%><br>
<br>
요청URI <%=request.getRequestURI()%><br>
<br>
컨텍스트경로 <%=request.getContextPath()%><br>
<br>
서버이름 <%=request.getServerName()%><br>
<br>
서버포트 <%=request.getServerPort()%><br>
<br>
requested URL: <%=request.getRequestURL()%><br>
<br>
requested Info: <%=request.getRequestURI()%><br>

<%
InetAddress inet= InetAddress.getLocalHost();
%>

<br>
server ip: <%=inet.getHostAddress()%>
