<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="color.jspf"%>

<%
  int num = Integer.parseInt(request.getParameter("num"));//글번호
  String pageNum = request.getParameter("pageNum");//페이징의 페이지 번호
//  out.println(num);
//  out.println(pageNum);
%>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">  
 <!--    
  function deleteSave(){	
	if(!document.delForm.passwd.value){
	   alert("비밀번호를 입력하십시요.");
	   document.delForm.passwd.focus();
	   return false;
    }
  }    
-->
</script>
</head>
<body bgcolor="<%=bodyback_c%>">
<p>글삭제</p>
<br>
<!--  
<form method="POST" name="delForm" 
   action="deletePro.jsp?pageNum=<%=pageNum%>" 
   onsubmit="return deleteSave()"> 
-->
<form method="POST" name="delForm" 
   action="deletePro.jsp?pageNum=<%=pageNum%>"> 	
   
 <table>
  <tr height="30">
     <td align=center  bgcolor="<%=value_c%>">
       <b>비밀번호를 입력해 주세요.</b></td>
  </tr>
  <tr height="30">
     <td align=center >비밀번호 :   
       <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="<%=num%>"></td>
 </tr>
 <tr height="30">
    <td align=center bgcolor="<%=value_c%>">
      <input type="submit" value="글삭제" >
      <input type="button" value="글목록" 
       onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">     
   </td>
 </tr>  
</table> 
</form>
</body>
</html>