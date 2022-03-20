<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${product.vo.prodName}-티켓자바TicketJava</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">

<!-- 개인 css -->
<link href="${pageContext.request.contextPath}/assets/css/indcom.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/product/productInfo.css" rel="stylesheet">

<style>

/* 평점 골드스타 */
.star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 2.25rem;
  line-height: 2.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
}
 
.star-rating input {
  display: none;
}
 
.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 1px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}
 
.star-rating :checked ~ label {
  -webkit-text-fill-color: gold;
}
 
.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}



/*평점 레드스타 나중에 css 분리 작업 */
.star {
	position: relative;
	font-size: 2rem;
	color: #dedede;
}

.star input {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	opacity: 0;
	cursor: pointer;
}

.star span {
	width: 0;
	position: absolute;
	left: 0;
	color: red;
	overflow: hidden;
	pointer-events: none;
}
</style>

</head>


<body data-spy="scroll" data-target=".navbar-example">
	<div id="wrap">
		<!-- header & nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container">
				<div class="row">
					<h2 class="pageMenu section">${product.vo.prodName}</h2>

					<div class="container bgc">
						<div class="row">
							<!-- 포스터 위치 -->
							<div class="col-xs-3 np">
								<img id="mainPoster" src="${pageContext.request.contextPath}/upload/${product.vo.posterPath}">
							</div>

							<div class="col-xs-6 np" id="mainInfo">
								<table id="infoTable">
									<tr>
										<th>장소</th>
										<td>${product.vo.theaterName}${product.vo.hallName}</td>
									</tr>
									<tr>
										<th>공연기간</th>
										<td>${product.vo.beginShow}~${product.vo.endShow}</td>
									</tr>
									<tr>
										<th>관람시간</th>
										<td>${product.vo.viewTime}분</td>
									</tr>
									<tr>
										<th>관람연령</th>
										<c:choose>
											<c:when test="${product.vo.viewGrade eq 1}">
												<td>전체 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 2}">
												<td>8세이상 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 3}">
												<td>12세이상 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 4}">
												<td>15세이상 관람가능</td>
											</c:when>
											<c:when test="${product.vo.viewGrade eq 5}">
												<td>18세이상 관람가능</td>
											</c:when>
											<c:otherwise>
												<td>미취학아동 관람불가</td>
											</c:otherwise>
										</c:choose>
									</tr>
									<tr>
										<th>가격</th>
										<td>
											<table id="priceTable">
												<c:forEach items="${product.seatPrice}" var="vo">
													<tr>
														<td>${vo.grade}석</td>
														<td>${vo.price}</td>
													</tr>
												</c:forEach>
											</table>
										</td>
									</tr>
								</table>
							</div>


							<div class="col-xs-3 np" id="calArea">
								<!-- 캘린더 api 구현 위치 -->
								<form id="rezArea" method="post" target="reserve" action="${pageContext.request.contextPath}/reservation/selectSeat">
									<c:import url="/WEB-INF/views/include/calendar.jsp"></c:import>
									<input id="prodNo" type="hidden" name="prodNo" value="${product.vo.prodNo}">
									<c:choose>
										<c:when test="${!empty param.viewDate}">
											<input id="viewDate" type="hidden" name="viewDate" value="${param.viewDate}">
										</c:when>
										<c:otherwise>
											<input id="viewDate" type="hidden" name="viewDate" value="">
										</c:otherwise>
									</c:choose>
									<button type="submit" id="rezBtn" class="btn btn-primary btn-block">예매하기</button>
								</form>
								<input id="beginshow" type="hidden" value="${product.vo.beginShow}"> <input id="endshow" type="hidden" value="${product.vo.endShow}">
							</div>
						</div>
					</div>

					<!-- 공연상세 페이지 네비 -->
					<div class="container section">
						<div class="row navbar-spy">

							<ul class="nav navbar-nav" role="tablist">
								<li class="scroll"><a href="#prodPath">공연정보</a></li>
								<li class="scroll"><a href="#castingPath">캐스팅정보</a></li>
								<li class="scroll"><a href="#addedPath">부가정보</a></li>
								<li class="scroll"><a href="#review">관람후기</a></li>
								<li class="scroll"><a href="#theater">공연장정보</a></li>
								<li class="scroll"><a href="#cancel">예매/취소안내</a></li>
								<!-- <li class="scroll"><a href="#qnalist">Q&A</a></li> -->
							</ul>

						</div>
					</div>


					<!-- 공연상세 -->
					<div class="container section">
						<div class="row">
							<div class="col-xs-9 np" id="infoDetail">
								<p class="tag">[공지사항]</p>
								<br>
								<div id="notice">${product.vo.notice}</div>
								<p id="prodPath" class="tag">[공연정보]</p>
								<img src="${pageContext.request.contextPath}/upload/${product.detail.prodPath}">

								<p id="castingPath" class="tag">[캐스팅정보]</p>
								<img src="${pageContext.request.contextPath}/upload/${product.detail.castingPath}">

								<p id="addedPath" class="tag">[부가정보]</p>
								<img src="${pageContext.request.contextPath}/upload/${product.detail.addedPath}">
							</div>
						</div>
					</div>


					<!-- 관람후기 -->
					<div class="container">
						<div class="row">
							<h4 id="review" class="cateMenu">관람후기</h4>
							<table class="table review-qna">
								<colgroup>
									<col width="15%">
									<col width="55%">
									<col width="15%">
									<col width="15%">
								</colgroup>
								<tr class="info">
									<th>평점</th>
									<th>내용</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>



								<c:forEach items="${requestScope.reviewList}" var="reviewList">
									<tbody>
										<tr>
											<td><span class="star"> ★★★★★ <span style="width: ${reviewList.rating}0%;">★★★★★</span> <input type="range" oninput="drawStar(this)" value="1" step="1"
													min="0" max="10"
												>
											</span> ${reviewList.rating}</td>
											<td>${reviewList.content}</td>
											<td>${reviewList.userName}</td>
											<td>${reviewList.regDate}<input type="hidden" name="userNo" value="${reviewList.userNo}"></td>
										</tr>
									</tbody>
								</c:forEach>

							</table>
							<button type="button" class="btn btn-primary position">후기등록</button>

						</div>
					</div>

					<!-- 후기작성 로그인해야 보임 -->
					<div class="container bgc">

						<div class="row">

							<c:choose>
								<c:when test="${empty sessionScope.authUser}">
									<form action="${pageContext.request.contextPath}/product/writeReview" method="get">
										<textarea class="form-control" id="review" name="content" placeholder="후기를 남기려면 로그인 해야합니다" disabled></textarea>
										<br> <span class="star"> ★★★★★ <span>★★★★★</span> <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
										</span> <input type="hidden" name="prodNo" value="${product.vo.prodNo}"> <input type="hidden" name="userNo" value="">

										<button type="submit" class="btn btn-primary position" disabled>등록</button>
									</form>
								</c:when>

								<c:otherwise>
									<form action="${pageContext.request.contextPath}/review/writeReview" method="get">
										<textarea class="form-control" id="review" name="content" placeholder="후기를 남겨주세요"></textarea>
										
										<div>
											<!--골드스타 5점 만점 -->
												<div class="star-rating space-x-4 mx-auto">
													<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings" /> <label for="5-stars" class="star pr-4">★</label> <input type="radio" id="4-stars"
														name="rating" value="4" v-model="ratings"
													/> <label for="4-stars" class="star">★</label> <input type="radio" id="3-stars" name="rating" value="3" v-model="ratings" /> <label for="3-stars" class="star">★</label>
													<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings" /> <label for="2-stars" class="star">★</label> <input type="radio" id="1-star" name="rating"
														value="1" v-model="ratings"
													/> <label for="1-star" class="star">★</label>
												</div>
										</div>

										<input type="hidden" name="prodNo" value="${product.vo.prodNo}"> <input type="hidden" name="userNo" value="${authUser.userNo}">

										<button type="submit" class="btn btn-primary position">후기 등록</button>
									</form>
								</c:otherwise>

							</c:choose>

						</div>

					</div>


					<!-- 공연장 정보 -->
					<div class="container section">
						<div class="row">
							<h4 id="theater" class="cateMenu">공연장 정보</h4>
							<div id="mapArea" class="col-xs-6">
								<div id="map"></div>
							</div>
							<div class="col-xs-6">
								<p>
									<strong>[공연장 정보]</strong>
								</p>
								<br>
								<p>장소: ${product.theater.theaterName} ${product.theater.hallName}</p>
								<p>주소: ${product.theater.address} ${product.theater.address2}</p>
								<p>대표번호: ${product.theater.phone}</p>
							</div>
						</div>
					</div>


					<!-- 예매/취소 안내 -->
					<div class="container section">
						<div class="row">
							<h4 id="cancel" class="cateMenu">예매/취소 안내</h4>
							<p>예매 취소 시 주의사항
							<p>
							<p>티켓 예매 후 7일 이내에 취소 시, 취소수수료가 없습니다.</p>
							<p>단, 예매 후 7일 이내라도 취소 시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.</p>
							<p>예매 당일 자정(12:00) 전에 취소할 경우 예매 수수료가 환불되며, 그 이후에는 환불되지 않습니다.</p>
							<p>예매티켓 취소는 아래 안내된 취소가능일 이내에만 할 수 있습니다.</p>
						</div>
					</div>


					<!-- QnA 
					<div class="container section">
						<div class="row">
							<h4 id="qnalist" class="cateMenu">Q&A</h4>
							<table class="table review-qna">
								<colgroup>
									<col width="60%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<tr class="info">
									<th>내용</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
								<tr>
									<td>예매 후 7일 이내, 취소 시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료 관련 문의<br> <span class="glyphicon glyphicon-send">[답변]</span>
									</td>
									<td>abcdefg</td>
									<td>22-02-22</td>
								</tr>
								<tr>
									<td>공연장 주차시설에 관해 궁금한점<br> <span class="glyphicon glyphicon-send">[답변]</span>
									</td>
									<td>werwer</td>
									<td>22-02-22</td>
								</tr>
							</table>
							<button type="button" class="btn btn-primary position">문의하기</button>
						</div>
					</div> -->


					<!-- 문의작성 -->
					<div class="container bgc">
						<div class="row">
							<textarea class="form-control" id="qna" placeholder="문의를 남겨주세요"></textarea>
							<br>
							<button type="button" class="btn btn-primary position">등록</button>
						</div>
					</div>



				</div>
			</div>


		</div>
		<!-- 컨텐츠 구역 종료 -->

		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>
	<!-- wrap 종료 -->

</body>


<!-- 지도 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2406d641e3fbe46cce1f4d732300cf88&libraries=services"></script>


<script>
	$(function(){
		var viewDate = $('#viewDate').val();
		if ( viewDate != ''){
			window.open('', 'reserve', 'width=960, height=800, left=300, top=100');
			$('#rezArea').submit();
		}
	});

	var today = new Date();
	var beginshow = new Date($('#beginshow').val());
	var md = new Date();

	if(today>beginshow) {
		md= today;
	}
	else {
		md= beginshow;
	}
	
	$("#rezCal").datepicker({

		minDate : new Date(md),
	  	maxDate : new Date($('#endshow').val())
	});
	
	$("#rezBtn").on("click", function() {
		
		var year= $('.-selected-').data('year');
		var month= $('.-selected-').data('month');
		month = month + 1;
		var date= $('.-selected-').data('date');
		
		if(year==null) {
			alert('희망 관람일을 선택하세요');
			return false;
		}
		
		if(month<10) {
			month= "0"+month;
		}
		if(date<10) {
			date= "0"+date;
		}
		
		var viewDate = year+'-'+month+'-'+date;
		var prodNo = $('#prodNo').val();

		console.log(viewDate+' '+prodNo);
		$('#viewDate').val(viewDate);
		
		/* window.open('${pageContext.request.contextPath}/reservation/selectSeat?prodNo='+prodNo+'&viewDate='+viewDate, 'reserve', 'width=960, height=800, left=300, top=100'); */
	 	window.open('', 'reserve', 'width=960, height=800, left=300, top=100');
	});
	
	
	 /* 리뷰 별점 */
	const drawStar = (target) => {
    document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
  };
		
	/* 공연장 정보 지도 */
	var mapContainer = document.getElementById('map'),   // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('${product.theater.address}', function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    	
		
	
	

	
</script>

</html>
