<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>

  <!-- 부트 스트랩 연결 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- 부트스트랩 CSS만 붙여왔을 때는 드롭다운이 작동을 안함, 그래서 부트스르탭 번들 코드를 붙여넣으니까 작동함 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
  </script>
  <!-- J쿼리 사용하기 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body style="background-color: rgb(243, 228, 168);">

  <!-- 가입 폼 시작 -->
  <form method="post" action="/studentControl?action=insert">
  <div class="container w-25 position-absolute top-50 start-50 translate-middle">
    <h1 style="text-align: center;">회원가입</h1>
    <p></p>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" name="">
    </div>
    <p></p>
    <div class="form-group">
      <label for="email">Email address:</label>
      <input type="email" class="form-control" id="email" name="email">
    </div>
    <p></p>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" name="pwd">
    </div>
    <p></p>
    <br>
    <div style="text-align: center;">
    <button type="button" class="btn btn-warning join">회원가입</button>
    </div>
  </div>
</form>
</body>
</html>