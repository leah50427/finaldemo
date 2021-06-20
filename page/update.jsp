<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("Email") != null ){
    if(request.getParameter("Email")!=null){
    sql = "UPDATE `members` SET `Email`='"+request.getParameter("Email")+"', `Password`='"+request.getParameter("Password")+"' WHERE `Email`='"+session.getAttribute("Email")+"'";
	con.createStatement().execute(sql);
    sql = "UPDATE `members` SET `Password`='"+request.getParameter("Password")+"' WHERE `Email`='"+session.getAttribute("Email")+"'";
	con.createStatement().execute(sql);	
	String Name=new String(request.getParameter("Name").getBytes("ISO-8859-1"),"UTF-8");
	sql = "UPDATE `members` SET `Name`='"+ Name +"' WHERE `Email`='"+session.getAttribute("Email")+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `members` SET `Tel`='"+request.getParameter("Tel")+"' WHERE `Email`='"+session.getAttribute("Email")+"'";
	con.createStatement().execute(sql);	
	String Address=new String(request.getParameter("Address").getBytes("ISO-8859-1"),"UTF-8");
	sql = "UPDATE `members` SET `Address`='"+ Address +"' WHERE `Email`='"+session.getAttribute("Email")+"'";
	con.createStatement().execute(sql);	
	con.close();//結束資料庫連結
	out.print("更新成功!! 請<a href='member.jsp'>按此</a>回會員頁面!!");
	}
	else{
	  con.close();//結束資料庫連結	
	  out.print("更新失敗!! 請填寫完整，<a href='member.jsp'>按此</a>回會員頁面!!");
	}
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="Email" /><br />
密碼：<input type="password" name="Password" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
-0rtf9