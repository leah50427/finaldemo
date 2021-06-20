<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/dblast";
Connection con=DriverManager.getConnection(url,"root","220strong");
String sql="use dblast";
con.createStatement().execute(sql);
%>