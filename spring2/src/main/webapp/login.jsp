<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/login.css">
<title>LOGIN</title>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<script type="text/javascript"></script>
</head>

<body style="background-color: rgb(255, 255, 255);">

  <!-- 로그인 기능 참고
  https://velog.io/@zl0zb/spring-%EB%A1%9C%EA%B7%B8%EC%9D%B8-%ED%8E%98%EC%9D%B4%EC%A7%80-%EB%A7%8C%EB%93%A4%EA%B8%B0-1 -->

  <!-- 로그인 폼 시작 -->
  <div class="container w-25 position-absolute top-50 start-50 translate-middle">
    <h1 style="text-align: center;">로그인</h1>

    <br>

    <div class="#">
      <div class="#">

        <label for="email">Id:</label>
        <input type="email" class="form-control " id="email">
      </div>

      <br>

      <div class="#">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd">
        <!-- <label>6글자 이상 입력해주세요</label> -->
      </div>
    </div>

    <br>
    <br>

    <div style="text-align: center;">

      <button type="button" id="loginmenu" class="btn btn-warning login">로그인</button>

       <a href="join.html" style="text-decoration-line: none;">
      <button type="button" id="joinmenu" class="btn btn-warning ">회원가입</button>
      </a>

    <br>
    <br>

    <label>아이디가 기억나지 않으십니까?</label><a href="findID.html"><label class="ms-2" style="color:rgb(48, 188, 253);">아이디 찾기</label></a>
    <label>비밀번호가 기억나지 않으십니까?</label><a href="findPW.html"><label class="ms-2" style="color:rgb(48, 188, 253);">비밀번호 찾기</label></a>
    </div>
   </div>
</body>

</html>