<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head> 
<body>
<% 
String user_name=(String)session.getAttribute("user_name");
if(user_name==null) {
	out.println("<script>alert('请先登录系统！');window.history.back();</script>");
} 
%>
<form id="form1" name="form1" method="post" action="distribute_chuli.jsp">
  <table width="830" height="487" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td valign="top" style="padding-left:15px; padding-top:15px;" background="image/right.jpg"><table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="35">&nbsp; 申请人员姓名：
            <input name="username" type="text" id="username" /></td>
        </tr>
        <tr>
          <td height="35">&nbsp; 申请物资名称：
            <input name="salary_all" type="text" id="salary_all" /></td>
        </tr>
        <tr>
          <td height="35">&nbsp; 获取物资方式：            
            <select name="salary_type" id="salary_type">
              <option value="自提" selected="selected">自提</option>
              <option value="送货上门">送货上门</option>
            </select>
            </td>
        </tr>
		 <tr>
          <td height="35">&nbsp; 操作人员名称：
            <input name="salary_per" type="text" id="salary_per" /></td>
        </tr>
		 <tr>
          <td height="35">&nbsp; 分配备注：
            <textarea name="beizhu" cols="50" rows="5" id="beizhu"></textarea></td>
        </tr>
		
        <tr>
          <td height="40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="Submit" value="提交" />
            &nbsp; <input type="reset" name="Submit2" value="重置" /></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>