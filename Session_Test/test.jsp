<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션 값 입력하기</title>
</head>
<body>
    <center><h3>[ 세션 값을 입력하는 예제 ]</h3></center>
    <hr/>
    세션에 저장할 값을 입력하는 페이지 입니다.
    <hr/>

    <br>
    <form action ="<%= request.getContextPath()%>/setsession.jsp" method="post">
        MyID 값 입력 : <input type="text" name="str1">   <br>
        StatusData 값 입력 : <input type="text" name="str2">  <br>
        <input type="submit" name="subm">  <br>
    </form>
    <hr/>

    <br><br>
    이미 생성된 Session 값 확인하기
    <form action ="<%= request.getContextPath()%>/getsession.jsp" method="post">
        <button type="submit" name="getsessionSbm"> 이동</button> <br>
    </form>

    <br>

    <hr/>
    생성된 세션 값(Attribute) 날리기
    <form action ="<%= request.getContextPath()%>/removesession.jsp" method="post">
        <button type="submit" name="removesessionSbm"> 이동</button> <br>
    </form>

    <br>

    <hr/>



</body>
</html>
