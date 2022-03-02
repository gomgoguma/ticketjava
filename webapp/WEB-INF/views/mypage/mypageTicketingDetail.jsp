<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava Standard layout include</title>
<!-- 부트스트랩 Bootstrap core CSS -->
<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- 기본 css -->
<link href="assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">
<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">
<link href="assets/css/mypage/mypageTicketingDetail.css" rel="stylesheet" type="text/css">

</head>


<style>
/* div 그리드 출력 (레이아웃 이해를 돕기 위한 코드) */
div {
	border: 0px solid black;
}
</style>
<body>
	<div id="wrap">
		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<div class="container-fluid zp">
			<div class="container">
				<div class="row">
					<!-- 로그인 회원가입 그리드 시작 -->
					<div class="col-xs-9" />
					<div class="col-xs-3 zp">
						<div id="header" class="clearfix no-drag no-ghost">
							<ul>
								<li><a href="#"> <img src="assets/image/index/bell-normal.png" /></li>
								<li><a href="#"> <img src="assets/image/index/bell-new.png" /></li>
								<li><a href="#">로그인</a></li>
								<li><a href="#">회원가입</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 로그인 회원가입 그리드 종료 -->
			</div>
			<!-- container 종료 -->
			<div class="container">
				<div class="row">
					<!-- 로고 검색자리 그리드 시작 -->
					<div class="col-xs-3 no-drag no-ghost" id="ticketJavaLogo">
						<a href=""> <img src="assets/image/index/ticketjava_main_logo.png" />
					</div>
					<div class="col-xs-9" id="serachBar">
						<form class="form-horizontal">
							<input type="text" class="form-control dis vm" placeholder="내가 찾는 티켓은.." value="">
							<button type="submit" class="btn btn-primary index-search">티켓잡으러검색</button>
						</form>
					</div>
				</div>
				<!-- 로고 검색자리 그리드 종료 -->
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 헤더 구역 종료 (로그인 로고 검색창) -->
		<!-- 네비바 구역 시작 -->
		<div class="container-fluid zp navbox">
			<div class="container nav">
				<!-- 네비바 자리 그리드없음 중앙 정렬 1000px 파란색 줄 -->
				<nav id="navnav" class="navbar navbar-expand-lg navbar-dark bg-primary btn-primary no-drag">
					<div id="navbar" class="" role="navigation">
						<ul class="clearfix">
							<li class="nav-item"><a href="">뮤지컬</a></li>
							<li class="nav-item"><a href="">연극</a></li>
							<li class="nav-item"><a href="">콘서트</a></li>
							<li class="nav-item"><a href="">스포츠</a></li>
							<li class="nav-item"><a href="">전시</a></li>
							<li class="nav-item"><a href=""> <span class="smallFont">공연장</span>
							</a></li>
							<li class="nav-item"><a href=""> <span class="smallFont">지역</span>
							</a></li>
							<li id="last-nav-item" class="nav-item"><a href=""> <span class="smallFont">랭킹</span>
							</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 네비바 구역 종료 -->
		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">
				<div class="row">
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2">
						<!-- aside -->
						<div id="container" class="clearfix">
							<div id="aside">
								<h2>마이페이지</h2>
								<ul>
									<li>
										<h3>예매내역</h3>
									</li>
									<li><a href="#">예매내역/취소</a></li>
									<li><a href="#">취소알림 내역</a></li>
								</ul>
								<ul>
									<li>
										<h3>나의활동</h3>
									</li>
									<li><a href="#">후기관리</a></li>
									<li><a href="#">문의내역</a></li>
								</ul>
							</div>
						</div>
						<!-- //aside -->
					</div>
					<!-- .col-xs-2 어사이드 종료 -->
					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">
						<!-- content -->
						<div id="content">
							<!-- content-head -->
							<div id="content-head">
								<h3>예매내역</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">예매내역/취소</li>
									</ul>
								</div>
								<div class="clear" />
							</div>
							<!-- //content-head -->
							<!-- content body -->
							<div class="ticketingDetail">
								<h4>예매정보 상세</h4>
								<h5>티켓명 : 뮤지컬 라이온 킹 인터내셔널 투어 － 서울（Musical The Lion King）</h5>
								<table>
									<tbody>
										<tr>
											<th>관람일시</th>
											<td>2022.03.17(목) 13:30</td>
											<th>장소</th>
											<td>예술의전당 오페라극장</td>
										</tr>
										<tr>
											<th>좌석</th>
											<td>객석 1층 5열 17 <br>객석 1층 5열 17
											</td>
											<th>예매일</th>
											<td>2022.03.02</td>
										</tr>
										<tr>
											<th>예매상태</th>
											<td>예매완료</td>
											<th>예매자</th>
											<td>홍길동</td>
										</tr>
									</tbody>
								</table>
								<h4>예매내역 및 취소</h4>
								<form action="requestCancelTicket" name="cancelticket" method="post">
									<table>
										<tbody>
											<tr>
												<th scope="col"><input type="checkbox" disabled></th>
												<th scope="col">예매번호</th>
												<th scope="col">좌석등급</th>
												<th scope="col">좌석번호</th>
												<th scope="col">가격</th>
												<th scope="col">예매상태</th>
											</tr>
											<tr>
												<td><input type="checkbox" />
												<td class="nav-item">t20220302</td>
												<td class="nav-item">S석</td>
												<td class="nav-item">1층A블럭 12열5번</td>
												<td class="nav-item">175,000원</td>
												<td class="nav-item">취소됨</td>
											</tr>
											<tr>
												<td><input type="checkbox" />
												<td>t20220302</td>
												<td>R석</td>
												<td>1층A블럭 12열5번</td>
												<td>175,000원</td>
												<td class="nav-item">예매중</td>
											</tr>
										</tbody>
									</table>
									<div class="btncancel">


										<button class="btn btn-primary" type="submit" value="" onclick="cancelCheck()">취소하기</button>
									</div>
								</form>

								<h4>취소 유의사항</h4>


								<table>
									<tbody>
										<tr>
											<th></th>
											<td>
												<div class="noticeCancelRegulations">
													<ul>
														<li>취소마감시간이 공연전시 상품 및 스포츠 구단마다 상이하며, 마감시간이 지난 이후에는 취소가 불가능합니다.</li>
														<li>취소 진행 시 취소 마감시간 확인 후 취소해주시기 바랍니다.</li>
														<li>예매수수료는 예매일 당일 취소하실 경우만 환불되며, 그 이후 취소 시에는 환불되지 않습니다.</li>
														<li>행사상의 문제로 인해 환불을 받으실 경우 별도의 수수료를 제공하지 않으며, 환불 주체가 티켓자바(TicketJava)가 아닌 행사 주최사가 될 수 있습니다.</li>
														<li>신용카드로 결제한 건에 대해 취소하실 경우, 최초 결제와 동일한 카드로 예매시점에 따라 취소 수수료와 배송비 등을 재승인합니다. 따라서 무이자할부 혜택 등 기간 별 프로모션 혜택이 적용되지 않을 수 있습니다.</li>
														<li>배송준비중 혹은 배송이후 상태에서는 배송지 변경이 불가합니다.</li>
														<li>발송 받으신 티켓을 분실하셨거나 티켓이 훼손되었을 경우 취소 및 변경이 절대 불가하오니 이 점 유의하시기 바랍니다.</li>
														<li>이미 배송이 시작된 티켓의 경우는 온라인 및 콜센터에서 취소가 불가합니다. 반드시 취소마감 시간 이전에 티켓이 아래 주소로 반송되어야 합니다. 취소수수료는 도착일자 기준으로 부과됩니다.</li>
														<li>티켓 반송시, 고객님의 예매번호와 연락처, 반송사유를 함께 보내주시면 빠른 처리에 도움이 됩니다. 또한 무통장 입금이나 계좌이체를 이용하셨을 경우 환불 받으실 계좌와 예금주를 적으셔서 티켓과 함께 등기우편으로 보내주시길 부탁 드립니다.</li>
														<li class="last">위 조건은 2022년 01월 01일 부터 유효합니다</li>
													</ul>
												</div>
											</td>
										</tr>
									</tbody>
								</table>

							</div>
							<!-- //content body -->
						</div>
						<!-- //content -->
					</div>
					<!-- .col-xs-10 컨텐츠 종료 -->
				</div>
				<!-- row 어사이드 컨텐츠 그리드 종료 -->
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->
		<!-- 푸터 구역 시작 -->
		<div class="container-fluid zp footerbox">
			<div class="container zp" id="footer">
				<div class="footerLogo no-drag no-ghost">
					<img src="assets/image/index/ticketjava_footer_logo.png">
				</div>
				<div class="footerTitle">
					<h4>
						프로젝트 티켓자바 : 글로벌IT 팀프로젝트 3조
						</h3>
						<h3>개발자 contacts</h3>
				</div>
				<div class="footerContacts form-horizontal">
					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">08_홀수_서한규</label> <span class="col-md-2">| copymach</span> <span class="col-md-2">https://github.com/copymach</span> <span class="col-md-6" />
					</div>
					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">14_홀수_유호준</label> <span class="col-md-2">| lisiee0</span> <span class="col-md-2">https://github.com/lisiee0</span> <span class="col-md-6" />
					</div>
					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">20_홀수_이원준</label> <span class="col-md-2">| squirrelchipmunk</span> <span class="col-md-2">https://github.com/squirrelchipmunk</span> <span class="col-md-6" />
					</div>
					<div class="form-group">
						<label class="col-md-2 form-text text-large bold">04_홀수_구민석</label> <span class="col-md-2">| 9Mzz</span> <span class="col-md-2">https://github.com/9Mzz</span> <span class="col-md-6" />
					</div>
				</div>
				<div class="footerComments">
					<table>
						<tr>
							<td>Own your Ticket!</td>
						</tr>
						<tr>
							<td>We are glad to help getting The Ticket with The TicketJava.</td>
						</tr>
						<tr>
							<td>Thank you for visit The TicketJava.</td>
						</tr>
						<tr>
							<td>This Website had build by 4men with The Passion at 2022 Feb.</td>
						</tr>
						<tr>
							<td>The TicketJava team has All of rights reserved.</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- 푸터 내용 종료 -->
		</div>
		<!-- 푸터 구역 종료 -->
	</div>
	<!-- wrap 종료 -->
</body>




</html>
