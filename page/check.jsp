<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("Password").equals("'or1=1#"))
{
	con.close();
    out.println("此密碼有問題，請重新輸入!!<a href='login.jsp'>按此</a>重新登入"); 
}
else if(request.getParameter("Email") !=null && request.getParameter("Password") != null)
{
    sql = "SELECT * FROM `members` WHERE `Email`='" +request.getParameter("Email") + 
          "'  AND `Password`='" + request.getParameter("Password") + "'"  ; 
    ResultSet rs =con.createStatement().executeQuery(sql);
	
	if(request.getParameter("Email").equals("10811210@cycu.org.tw") && request.getParameter("Password").equals("0000")){
		session.setAttribute("Email",request.getParameter("Email"));
		response.sendRedirect("back.jsp") ;
	}
    else if(rs.next()){            
        session.setAttribute("Email",request.getParameter("Email"));
        con.close();
        response.sendRedirect("index.jsp") ; 
    }
    else{
       con.close();
       out.println("密碼與帳號不符!!<a href='login.jsp'>按此</a>重新登入"); 
    }
}
%>