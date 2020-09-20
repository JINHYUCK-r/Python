<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "kakao.com.MapDataBean" %>	
<%@ page import = "kakao.com.MapDBBean" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- appkey=a104f0539e077430fd903e49735a8b09 -->	
<%
	MapDataBean mapDataBean = new MapDataBean(); 
	MapDBBean mapDBBean = MapDBBean.getInstance();
	List<MapDataBean> mapDataList = null; 
	
	mapDataList = mapDBBean.getDataAll();
	
	
	//자바배열을 자바스크립트 배열에 바로 넣는 방법이 없다. 
	//자바스크립트 배열을 스트링 버퍼에 구분자를 넣어서 하나의 스트링으로 만들어서
	//자바 스크립트에서 그 구분자를 split로 짤라서 사용했다.
	
	//내용정보..
	StringBuffer strBufInfo=new StringBuffer();
	for(int i=0;i<mapDataList.size();i++)
	{
		strBufInfo.append(mapDataList.get(i).getInfo());
		if(i<mapDataList.size()-1)//배열의 끝이 아니라면 문자사이에 , 구분자를 추가
		{
			strBufInfo.append(",");
		}
	}
	
	//위도...
	StringBuffer strBufLat=new StringBuffer();
	for(int i=0;i<mapDataList.size();i++)
	{
		strBufLat.append(mapDataList.get(i).getLat());
		if(i<mapDataList.size()-1)//배열의 끝이 아니라면 문자사이에 , 구분자를 추가
		{
			strBufLat.append(",");
		}
	}
	
	//경도..
	StringBuffer strBufLang=new StringBuffer();
	for(int i=0;i<mapDataList.size();i++)
	{
		strBufLang.append(mapDataList.get(i).getLang());
		if(i<mapDataList.size()-1)//배열의 끝이 아니라면 문자사이에 , 구분자를 추가
		{
			strBufLang.append(",");
		}
	}
	
%>	

<script type="text/javascript">
	//자바변수 info 정보를 자바스크립트 변수로 저장..
	var StrInfo="<%=strBufInfo.toString()%>"
	var infoArray=StrInfo.split(",");
	
	//자바변수 lat 정보를 자바스크립트 변수로 저장..
	var StrLat="<%=strBufLat.toString()%>"
	var latArray=StrLat.split(",");
	
	//자바변수 lang 정보를 자바스크립트 변수로 저장..
	var StrLang="<%=strBufLang.toString()%>"
	var langArray=StrLang.split(",");
</script>
	
	<div id="map" style="width:100%;height:350px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a104f0539e077430fd903e49735a8b09"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		/*
		var positions = [
		    {
		        content: '<div>카카오</div>', 
		        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
		    },
		    {
		        content: '<div>생태연못</div>', 
		        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		    },
		    {
		        content: '<div>텃밭</div>', 
		        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		    },
		    {
		        content: '<div>근린공원</div>',
		        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		    }
		];
		*/
		
		var positions = [];	//빈 배열을 선언..
		
		for(var i=0; i<<%=mapDataList.size() %>; i++){
			positions[i] = {
					content: infoArray[i],
					latlng: new kakao.maps.LatLng(latArray[i], langArray[i])
			}
		}
		
		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });
		
		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });
		
		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}
		
		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}
		
		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
		</script>	
</body>
</html>