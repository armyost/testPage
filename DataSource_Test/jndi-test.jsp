<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%


    Context ctx = new InitialContext();
    DataSource ds = (DataSource)ctx.lookup("jdbc/JNDI1DB2DS");
 
    Connection conn = null;
    Statement stmt = null;
    ResultSet r = null;
 
    try {
        // 데이터소스와 DB연결해서 명령객체를 가지고 오자.
        conn = ds.getConnection();
        stmt = conn.createStatement();
   
        // 쿼리문 실행
        try {
   
            // Create a statement and execute the query on it
            r = stmt.executeQuery("select current node from sysibm.sysdummy1;");
   
            // 결과레코드및 메타데이터
            while (r.next()) {
                out.println("<BR />Instance Number for JVM DB Connection : "+r.getString("1"));
                out.println("<BR />");
                out.println("<hr />");
                out.println("<BR />NOTE <BR /> -Server Node 0 : AP1 <BR /> -Server Node 1 : AP2 <BR /> -Server Node 2 : AP3 <BR /> -Server Node 3 : Standby");
            }
                
            // Clean up
            stmt.close();
            conn.close();
   
        } catch (SQLException se) {
            out.println(se.toString());
        } catch (Exception e) {
            out.println(e.toString());
        }
   
    } finally {
      
        try { if(stmt != null) stmt.close(); } catch (Exception e) {}
        try { if(conn != null) conn.close(); } catch (Exception e) {}
        try { if(r != null) r.close(); } catch (Exception e) {}
    }
%>
