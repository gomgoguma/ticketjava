<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
</head>
<body>

	<form id="historyForm" action="" method="post">
		<input type="hidden" name="rezNo" value="${param.rezNo}">
		<input type="hidden" name="prodNo" value="${param.prodNo}">
		<input type="hidden" name="viewDate" value="${param.viewDate}">
	</form>


</body>


<script type="text/javascript">
	if(confirm('진행중인 예매가 있습니다. 이어서 하시겠습니까?')== true){
		if( ${param.totalPayment} <= 0){
			$('#historyForm').attr('action', '${pageContext.request.contextPath}/reservation/selectQuantity');
		}
		else{
			$('#historyForm').attr('action', '${pageContext.request.contextPath}/reservation/confirmReservation');
		}
		$('#historyForm').submit();
	}
	else{
		var rezNo = ${param.rezNo};
		$.ajax({
			url: "${pageContext.request.contextPath}/reservation/preDelNow",
			type : "post",
			data: {rezNo:rezNo},
			success : function(){
				location.replace('${pageContext.request.contextPath}/reservation/selectSeat?prodNo=${param.prodNo}&viewDate=${param.viewDate}');
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	

</script>

</html>

