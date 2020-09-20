<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch10.board.BoardDBBean" %>
<%@ page import = "ch10.board.BoardDatabean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<%@ include file = "color.jspf" %>    

<%!
    int pageSize = 10;	// 한 페이지에 보여질 글 목록의 갯수..
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
    String pageNum = request.getParameter("pageNum");
	System.out.println(pageNum);
    if (pageNum == null) {
        pageNum = "1";	//pageNum 값이 없으면 기본값을 1로 지정..
    }

    int currentPage = Integer.parseInt(pageNum);	//페이징 에서 현제 페이지..
    int startRow = (currentPage - 1) * pageSize + 1;	//현재 페이지 글목록에 표시할 시작 글번호..
    int endRow = currentPage * pageSize;	//현재 페이지의 글목록에 표시될 마지막 글번호..
	  
    int count = 0;
    int number = 0;
    List<BoardDatabean> articleList = null; 
    
    BoardDBBean dbPro = BoardDBBean.getInstance();
    count = dbPro.getArticleCount();
    
    if (count > 0) {//글의 전체 개수가 0보다 크면 글의 목록(복수개의 글)을 가져옴..
        articleList = dbPro.getArticles(startRow, pageSize);
    }
	
	number = count-(currentPage-1)*pageSize;//페이징 될때 첫번째 글 번호..
	
%>
    
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<title>게시판</title>
</head>
<body bgcolor="<%=bodyback_c%>">
<p>글목록(전체 글:<%=count%>)</p>

<table>
  <tr>
    <td align="right" bgcolor="<%=value_c%>">
       <a href="writeForm.jsp">글쓰기</a>
    </td>
  </tr>
</table>

<% if (count == 0) { %>

<table>
<tr>
    <td align="center">
              게시판에 저장된 글이 없습니다.
    </td>
</table>

<% } else {%>
<table> 
    <tr height="30" bgcolor="<%=value_c%>"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td> 
      <td align="center"  width="100" >IP</td>    
    </tr>
<%  
	
   for (int i = 0 ; i < articleList.size() ; i++) {
       BoardDatabean article = articleList.get(i);
%>
   <tr height="30">
    <td  width="50" > <%=number--%></td>	<!-- 웹의 리스트에 보여질 가장큰 번호부터 -1씩 출력한다. -->
    <td  width="250" align="left">
<%
	int wid=0; 
	if(article.getRe_level()>0){	//답변글인 경우 들여쓰기를 하기위해..
	   wid=5*(article.getRe_level());
%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
	  <img src="images/re.png">
<%  }else{%>	<!-- 원글일 경우.. 아래코드의 width=0 이된다. -->	
	  <img src="images/level.png" width="<%=wid%>" height="16">
<%  }%>
      <!-- 글의 제목에 링크를 설정하여 content.jsp페이지로 이동해서 글 내용을 볼수있게 한다. get방식으로 데이터를 보낸다. -->     
      <a href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
           <%=article.getSubject()%></a> 
<% if(article.getReadcount()>=20){%>	<!-- 조회수가 20 이상이면 hot.gif 이미지를 보여준다. -->
         <img src="images/hot.gif" border="0"  height="16"><%}%> </td>
    <td width="100" align="left"> 
       <a href="mailto:<%=article.getEmail()%>">
                     <%=article.getWriter()%></a></td>
    <td width="150"><%= sdf.format(article.getReg_date())%></td>
    <td width="50"><%=article.getReadcount()%></td>
    <td width="100" ><%=article.getIp()%></td>
  </tr>
<%}%>
</table>
<%}%>

<%
    if (count > 0) {	//전체글의 갯수가 0보다 크면..
    	//pageCount는 페이지의 개수.. 6개의 글이 있고 한번에 5개의 글을 보여 준다고 가정하면 pageCount는 2가 된다.
    	//count는 전체 글의 수 .. pageSize는 하나의 페이지에 보여줄 글의 수..
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage =1;
		
		//currentPage는 페이징에서 사용자가 선택한 페이지..
		if(currentPage % 10 != 0){	//currentPage를 10으로 나눈 나머지가 0 이 아니면..
           	startPage = (int)(currentPage/10)*10 + 1;	//startPage는 페이지 블락의 첫번재 페이지
		}												//페이지 블락이 10 일경우 1, 10, 20,..이렇게 증가한다.
		else{	//currentPage를 10으로 나눈 나머지가 0 이면..
			startPage = ((int)(currentPage/10)-1)*10 + 1;
		}
		
		int pageBlock = 10;	//한페이지에 보여줄 최대 페이징 개수를 10개로 지정..10보다 크면 [다음] 표시..
        int endPage = startPage + pageBlock - 1;	//페이지 블락의 마지막 페이지
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) { %>	<!-- 페이징 할때 시작 페이지가 10페이지 보다 큰 값이면..[이전] 을 표시.. -->
          <a href="list.jsp?pageNum=<%= startPage - 10 %>">[이전]</a>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>	<!-- 시작페이지 부터 마지막 페이지 까지 링크를 걸어준다. -->
           <a href="list.jsp?pageNum=<%= i %>">[<%= i %>]</a> <!--페이지 번호를 get 방식으로 list.jsp페이지에 넘겨주고 페이지 번호"i"를 화면에 표시  -->
<%      }
        
        if (endPage < pageCount) {  %><!-- 페이징 할때 마지막 페이지가 pageCount 보다 작으면 [다음] 을 표시.. -->
        <a href="list.jsp?pageNum=<%= startPage + 10 %>">[다음]</a>
<%
        }
    }
%>

</body>
</html>