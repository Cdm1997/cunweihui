<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="bao.Wuzi_mg"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body> 
  <table width="830" height="487" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td valign="top" style="padding-left:15px; padding-top:15px;" background="image/right.jpg"><table width="494" border="1" cellspacing="0" cellpadding="0">
        <tr>
          <td width="69" height="33" align="center">���ʱ��</td>
          <td width="69" align="center">��������</td>
          <td width="165" align="center">�������</td>
        </tr> 
     <%
		List<Wuzi_mg> list = (List<Wuzi_mg>)request.getAttribute("list");
		if(list==null||list.size()<1){
			out.print("û����Ϣ��");
		}else{
		for(Wuzi_mg p : list){
	%>
        <tr>
          <td height="35" align="center"><%=p.getqNo()%></td>
          <td align="center"><%=p.getUsername()%></td>
          <td align="center"><%=p.getShiyong_time()%></td>

          
        </tr>
        <%	
		}
	}
	%>
	
      </table></td>
    </tr>
  </table>
</body>
</html>