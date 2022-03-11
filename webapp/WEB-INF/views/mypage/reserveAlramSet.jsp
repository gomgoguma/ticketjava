<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 마이페이지 취소알림</title>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">

</head>


<body>
	<div id="wrap">

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">


				<div class="row">
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2">

						<!-- aside -->
						<c:import url="/WEB-INF/views/include/asideMypage.jsp"></c:import>
						<!-- //aside -->


					</div>
					<!-- 어사이드 종료 -->

					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">



						<!-- content -->
						<div id="content">

							<!-- content-head -->
							<div id="content-head">
								<h3>취소알림 설정</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">취소알림 설정</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->


							<div id="board">
								<div id="list">
									<table>
										<thead>
											<tr>
												<th>번호</th>
												<!-- 취소알림 신청번호 -->
												<th>알림신청일</th>
												<th>상품명</th>
												<th>좌석/구역</th>
												<th>알림간격</th>
												<th>알림상태</th>
											</tr>
										</thead>
										<tbody>
											<form action="" name="" method="get">
												<tr>

													<td>123</td>
													<td>2020-12-15</td>
													<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
													<td>A</td>
													<td><select name="alertDuration">
															<option name="10min" value="10min">10분</option>
															<option name="1hour" value="60min">1시간</option>
															<option name="2hour" value="120min">2시간</option>
															<option name="6hour" value="360min">6시간</option>
															<option name="12hour" value="720min">12시간</option>
													</select>

														<button type="button" class="btn btn-primary">변경</button></td>
													<td><img src="${pageContext.request.contextPath}/assets/image/index/bell-off.png">
														<button type="button" class="btn btn-primary">설정변경</button></td>

												</tr>
											</form>
											<tr>

												<td>123</td>
												<td>2020-12-15</td>
												<td class="text-left"><a href="#">뮤지컬 라이온킹 오리지널 내한..</a></td>
												<td>B, C</td>
												<td><select name="alertDuration">
														<option name="10min" value="10min">10분</option>
														<option name="1hour" value="60min">1시간</option>
														<option name="2hour" value="120min">2시간</option>
														<option name="6hour" value="360min">6시간</option>
														<option name="12hour" value="720min">12시간</option>
												</select>

													<button type="button" class="btn btn-primary">변경</button></td>
												<td><img src="${pageContext.request.contextPath}/assets/image/index/bell-normal.png">
													<button type="button" class="btn btn-primary">설정변경</button></td>
												</form>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
							<!-- //content body -->

						</div>
						<!-- //content -->




					</div>
					<!-- .col-xs-10 컨텐츠 종료 -->
				</div>
				<!-- 어사이드 컨텐츠 그리드 종료 -->
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->

</body>
</html>