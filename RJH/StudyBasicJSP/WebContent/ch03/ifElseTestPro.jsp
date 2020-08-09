<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8");%> <!-- 폼으로부터 넘어온 파라미터 변수의 한글이 깨지지않도록 하기위해 사용 -->

<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
			
	if(age>= 20){ //나이가 20세 이상일 경우
		out.println("<b>"+name+"</b> 님의 나이는 20살 이상입니다.");
	//ou.println()메소드를 사용한 이유는 코드를 더 간결하게 표시하기 위해서 이다. jsp의 표현식을 사용한다면 가독성이 떨어진다.
	
	}else{	// 나이가 20세 미만일 경우
		out.println("<b>"+name+"</b> 님은 미성년자 입니다.");
	}
	
%>
<!--  1~2번 라인에 걸쳐 page디렉티브에서 현재 페이지의 한글이 깨지지않도록 한글의 인코딩을 utf-8로 설정했는데 4번라인에서 왜 또 지정해야 하는가?
	page 디렉티브에서 설정한 한글 인코딩은 웹 서버가 응답해준 결과의 한글이 깨지지않도록 설정하는 부분이다.
	그러나 4번 라인 웹 브라우저가 웹 서버쪽으로 요청했을때 요청 정보에 한글이 있을경우 한글이 깨지는ㄱ ㅓㅅ을 방지하기 위한 한글인코딩이다.
	폼으로부터 입력된 데이터에 한글이 있을경우, 반드시 기술해야하는 문장이다.
 -->









