<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP UPDATE</title>
    </head>
    <body>      
	   <%  		
        try {
//Step 1: 載入資料庫驅動程式 	        
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 	            
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","220strong");   				
		        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                    {	
//Step 3: 選擇資料庫	                    	
                    con.createStatement().execute("USE dblast");
//Step 4: 執行 SQL 指令  
request.setCharacterEncoding("UTF-8");  
String update_id=request.getParameter("id");
String update_product=request.getParameter("product");
String update_price=request.getParameter("price");
String update_photo=request.getParameter("photo");
                    String sql = "UPDATE `product` SET `Product_name` = '"+update_product+"' WHERE `id` = '"+update_id+"' ";
                    String sql1 = "UPDATE `product` SET `Price` = '"+update_price+"' WHERE `id` = '"+update_id+"' ";
                    String sql2 = "UPDATE `product` SET `Photo` = '"+update_photo+"' WHERE `id` = '"+update_id+"' ";
                    
                    
                    
					 con.createStatement().executeUpdate(sql);
                     con.createStatement().executeUpdate(sql1);
                     con.createStatement().executeUpdate(sql2);//可回傳異動數
					
//Step 5: 顯示結果 
                    
//Step 6: 關閉連線 
                    con.close();
                    response.sendRedirect("back.jsp");
                    }
                }              
            catch (SQLException sExec) {
                    out.println("SQL錯誤"+sExec.toString());
                }
            }
        catch (ClassNotFoundException err) {
            out.println("class錯誤"+err.toString());
        }
       %>
    </body>
</html>
