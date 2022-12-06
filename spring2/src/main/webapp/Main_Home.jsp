<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HomePage</title>

  <!-- 부트 스트랩 연결 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body style="background-color: rgb(255, 255, 255);">

  <!-- 네비게이션 바 -->
  <nav class="navbar navbar-expand-lg navbar-light bg-danger bg-opacity-25 navbar-fixed-top">
    <div class="container-fluid">

      <!-- 로고 사진 누르면 홈으로 돌아오기 -->
      <a class="navbar-brand" href="main_home.html">
        <img src="./요리조리1.png" width="200" height="70" style="border: 01px solid rgba(0, 0, 0, 0.363);">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Home 버튼 -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="main_home.html">Home</a>
          </li>

          <!-- 화장품 드롭다운 -->
          <li class="nav-item dropdown">

            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              화장품
            </a>

            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#">신제품</a></li>
              <hr class="dropdown-divider">

              <li><a class="dropdown-item" href="#">인기제품</a></li>
              <hr class="dropdown-divider">

              <li><a class="dropdown-item" href="#">카테고리</a></li>
              <hr class="dropdown-divider">

              <li><a class="dropdown-item" href="#">전체보기</a></li>
            </ul>

          </li>

          <!-- 고객 서비스 드롭다운 -->
          <li class="nav-item dropdown">

            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              고객 서비스
            </a>

            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="recipe.html">FAQ</a></li>
                <hr class="dropdown-divider">

              <li><a class="dropdown-item" href="#">공지사항</a></li>
              <hr class="dropdown-divider">

              <li><a class="dropdown-item" href="#">문의사항</a></li>
            </ul>

          </li>

        <!-- <a id="main_name" style="text-decoration-line: none; color:black" class="mx-4"></a>

        <a href="admin_login.html" style="color: white ;">
          <form class="d-flex" role="logout">
            <button id="logoutmenu" type="button" class="btn btn-light">로그아웃</button>
          </form>
        </a> -->

      </div>

      <!-- 오른쪽 상단에 내 정보 확인할 수 있는 오프캔버스 버튼 -->
      <button class="btn btn-primary btn-danger" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">=</button>

    </div>
  </nav>

  <!-- 오프 캔버스 버튼 누르면 나오는 작은 페이지 구성 -->
<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasRightLabel">Offcanvas right</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    ...
  </div>
</div>
  

  <br>

  <!-- 최신 레시피 캐러셀 -->
  <!-- <h3 style="color:black; text-align: center;">
    < 최신 레시피>
  </h3>
  <br>
  <div id="carouselExampleCaptions" class="carousel carousel-dark slide" data-bs-ride="carousel">
    <div class="carousel-indicators" style="color:white ;">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
        aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
        aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
        aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner" style="text-align: center ;">

      <div class="carousel-item active">
        <img src="소곱창 구이.jpg" width="900" height="600" alt="...">
        <div class="carousel-caption">
          <h5 style="color:white ;">소곱창 구이</h5>
          <p style="color:white ;">지글지글 맛있는 소곱창 구이</p>
        </div>
      </div>

      <div class="carousel-item">
        <img src="알탕.jpg" width="900" height="600" alt="...">
        <div class="carousel-caption">
          <h5 style="color:white ;">알탕</h5>
          <p style="color:white ;">해장하기 딱 좋은 얼큰 시원 알탕</p>
        </div>
      </div>

      <div class="carousel-item">
        <img src="육회.jpg" width="900" height="600" alt="...">
        <div class="carousel-caption">
          <h5 style="color:white ;">육회</h5>
          <p style="color:white ;">입에서 살살 녹는 육회</p>
        </div>
      </div>
    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">이전</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">다음</span>
    </button>
  </div> -->
  
</body>
</html>