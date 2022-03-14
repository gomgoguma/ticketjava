<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava include</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/product/productInfo.css" rel="stylesheet">

</head>


<body>
	<div id="wrap">
		<!-- header & nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 종료 -->
		
		
		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container">
				<div class="row">
					<h2 class="pageMenu section">추천상품</h2>
					
					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">		
								<c:forEach items="${type.topList}" var="tvo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%4 eq 0}">
											<li class="spo-width last">
												<div class="spo">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${tvo.prodNo}"><img class="sportsposter" src="${pageContext.request.contextPath}/upload/${tvo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${tvo.prodName}</strong></p>
													<p class="text-left">${tvo.beginShow} ~ ${tvo.endShow}</p>
													<p class="text-left">${tvo.theaterName} ${tvo.hallName}</p>
												</div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="spo-width">
												<div class="spo">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${tvo.prodNo}"><img class="sportsposter" src="${pageContext.request.contextPath}/upload/${tvo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${tvo.prodName}</strong></p>
													<p class="text-left">${tvo.beginShow} ~ ${tvo.endShow}</p>
													<p class="text-left">${tvo.theaterName} ${tvo.hallName}</p>
												</div>
											</li>
										</c:otherwise>	
									</c:choose>	
								</c:forEach>
							</ul>
						</div>
					</div>
					
				</div>
				
				<div class="row">
					<h2 class="pageMenu section">전체상품</h2>
					
					<div class="container">
						<div class="row">
							<ul class="nav navbar-nav">
								<c:forEach items="${type.allList}" var="avo" varStatus="status">
									<c:choose>
										<c:when test="${status.count%4 eq 0}">
											<li class="spo-width last">
												<div class="spo">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${avo.prodNo}"><img class="sportsposter" src="${pageContext.request.contextPath}/upload/${avo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${avo.prodName}</strong></p>
													<p class="text-left">${avo.beginShow} ~ ${avo.endShow}</p>
													<p class="text-left">${avo.theaterName} ${avo.hallName}</p>
												</div>
											</li>
										</c:when>
										<c:otherwise>
											<li class="spo-width">
												<div class="spo">
													<a href="${pageContext.request.contextPath}/product/info?prodNo=${avo.prodNo}"><img class="sportsposter" src="${pageContext.request.contextPath}/upload/${avo.posterPath}"></a>
												</div>
												<div class="productInfo">
													<p class="text-left title"><strong>${avo.prodName}</strong></p>
													<p class="text-left">${avo.beginShow} ~ ${avo.endShow}</p>
													<p class="text-left">${avo.theaterName} ${avo.hallName}</p>
												</div>
											</li>
										</c:otherwise>	
									</c:choose>	
								</c:forEach>
							</ul>
						</div>
						
					</div>
				</div>
	
			</div> 
		</div>
		<!-- 컨텐츠 구역 종료 -->
		
		
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>	
		
	</div> <!-- wrap 종료 -->
	
</body>

</html>