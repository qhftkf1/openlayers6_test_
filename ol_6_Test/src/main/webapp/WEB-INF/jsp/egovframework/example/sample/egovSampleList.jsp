<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.2.1/css/ol.css" type="text/css">
    <script type="text/javaScript" language="javascript" defer="defer">
       
    </script>
     <style>
      .map {
        height: 800px;
        width: 100%;
      }
    </style>
    <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.2.1/build/ol.js"></script>
   
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
     <h2>My Map</h2>
    <div id="map" class="map"></div>
	song
	<script>
	
	 var map = new ol.Map({
	        target: 'map',
	        view: new ol.View({
	          center: ol.proj.fromLonLat([129, 35.5]),
	          zoom: 12
	        })
	      });
	 
		 const openStreetStandard = new ol.layer.Tile({
	 		source: new ol.source.OSM({
	 			url:'https://{a-c}.tile.dapi.kakao.com/v2/maps/sdk.js?appkey=f39a0d108e50fbc924aa76ce53f4d7d9/{z}/{x}/{y}.png'
	 		}),
	 		visible: false,
	 	})
	 	const openStreetMapHumanitarian = new ol.layer.Tile({
	 		source: new ol.source.OSM({
	 			url:'https://{a-c}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png'
	 		}),
	 		visible: true,
	 	})
		
		const baseLayerGroup = new ol.layer.Group({
			layers:[
				openStreetStandard, openStreetMapHumanitarian
			]
		})
		map.addLayer(baseLayerGroup);
	</script>
</body>
</html>
