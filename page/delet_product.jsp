<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<body>
        <%  
        //Step 1: 載入資料庫驅動程式 		
                try {
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
           String delet_id=request.getParameter("id");
                            String sql = "DELETE FROM `product` WHERE `id` = '"+delet_id+"' ";
                            //SQL語法，將辛普森同學刪除
                            int rec = con.createStatement().executeUpdate(sql);
        //Step 5: 顯示結果 
                            if (rec>0)
                                                   out.println("刪除成功");
                                                else
                                                    out.println("刪除失敗");
        //Step 6: 關閉連線                                      
                                                con.close();
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