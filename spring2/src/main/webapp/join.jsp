<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JOIN</title>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<script type="text/javascript">

// 아이디 중복 체크를 위한 ajax 시작
function registerCheckFunction() {
	var id = $('#id').val();
	$.ajax({
		type: 'POST',
		url: './LoginAndJoinCheckController',
		data: {id: id},
		success: function(result) {
			if(result == 1) {
				$('#checkMessage').html('사용할 수 있는 아이디입니다.');
				$('#checkType').attr('class', 'modal-content panel-success');
			}
			else {
				$('#checkMessage').html('사용할 수 없는 아이디입니다.');
				$('#checkType').attr('class', 'modal-content panel-warning');
			}
			$('#checkModal').modal("show");
		}
	})
}
//아이디 중복 체크를 위한 ajax 끝

function passwordCheckFunction() {
	var password = $('#password1').val();
	var check_password = $('#password2').val();
	if(password != check_password) {
		$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
	} 
	if(password == check_password) {
		$('#passwordCheckMessage').html('');
	}
}

</script>
</head>
<body>

	<!-- 회원가입 기능 참고
  https://kimvampa.tistory.com/89 -->


	<!-- 회원가입 폼 시작 -->
	<div class="container w-25 position-absolute top-50 start-50 translate-middle">

		<form method="post" action="./LoginAndJoincontrol">
			<h1 style="text-align: center;">회원가입</h1>

			<p></p>
			
			<div class="form-group">
				<label for="name">Id:</label> <input class="form-control" type="text" id="id" name="id" placeholder="아이디를 입력해주세요"> 
				<button class="btn btn-primary" onclick="registerCheckFunction();">중복체크</button>
			</div>

			<p></p>

			<div class="form-group">
				<label for="email">Email address:</label> <input type="email"
					class="form-control" id="email_address" name="email_address" type="button" placeholder="이메일을 입력해주세요">
			</div>

			<p></p>

			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="password1" name="password1" onkeyup="passwordCheckFunction();" type="button" placeholder="비밀번호를 입력해주세요">
			</div>

			<p></p>

			<div class="form-group">
				<label for="pwd">Check Password:</label> <input type="password"
					class="form-control" id="password2" name="password2" onkeyup="passwordCheckFunction();" type="button" placeholder="비밀번호 확인을 입력해주세요">
			</div>
			<br>
			<div style="text-align: center;">
			<h5 style="color: red;" id="passwordCheckMessage"></h5><input type="submit" class="btn btn-primary pull-right" id="join" name="join" value="회원가입">
			</div>
		</form>
	</div>
	<%
	String messageContent = null;
	if (session.getAttribute("messageContent") != null) {
		messageContent = (String) session.getAttribute("messageContent");
	}
	String messageType = null;
	if (session.getAttribute("messageType") != null) {
		messageType = (String) session.getAttribute("messageType");
	}
	if (messageContent != null) {
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div
					class="modal-content  <%if (messageType.equals("오류 메시지")) out.println("panel-warning"); else out.println("panel-success");%>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span> <span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							<%=messageType%>
						</h4>
					</div>
					<div class="modal-body">
						<%=messageContent%>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#messageModal').modal("show");
	</script>
	<%
	session.removeAttribute("messageContent");
	session.removeAttribute("messageType");
	}
	%>
	
	
		<div class="modal fade" id="checkModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							확인 메시지
						</h4>
					</div>
					<div class="modal-body" id="checkMessage">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>