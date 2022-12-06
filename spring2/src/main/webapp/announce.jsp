<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원</title>

      <!-- 부트 스트랩 연결 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- 부트스트랩 CSS만 붙여왔을 때는 드롭다운이 작동을 안함, 그래서 부트스르탭 번들 코드를 붙여넣으니까 작동함 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body style="background-color: rgb(243, 228, 168);">

    <!-- 네비게이션 바 -->
  <nav class="navbar navbar-expand-lg navbar-light bg-warning bg-opacity-25 navbar-fixed-top">
    <div class="container-fluid">
<!-- 사진 누르면 홈으로 돌아오기 -->
      <a class="navbar-brand" href="main_home.html">
        <img src="./요리조리1.png" width="200" height="70" style="border: 01px solid rgba(0, 0, 0, 0.363);">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="main_home.html">Home</a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              회원
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="user_list.html">회원 관리</a></li>
            </ul>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              레시피
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="recipe.html">등록 및 관리</a></li>
              <li>
                <!-- <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">후기</a></li> -->
            </ul>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              쇼핑
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="shopping.html">등록 및 관리</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">주문, 취소, 반품</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">후기, 문의</a></li>
            </ul>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              관리자 커뮤니티
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="admin_list.html">관리자 목록</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="admin_announce.html">공지사항</a></li>
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="#">매출</a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#">매출 통계</a></li>
            </ul>
          </li>
        </ul>

        <a id="main_name"></a>
        <a href="admin_login.html" style="color: white ;">
          <form class="d-flex" role="logout">
            <button type="button" class="btn btn-light login">로그아웃</button>
          </form>
        </a>
        
  </nav>
 
    <br>
    <br>


        <!-- 상단바 아래의 컨텐츠 부분 -->
        <div class="container">
          <!-- <hr class="myHr">  -->
          <div class="row">
              <div class="col-7">
                  <h2>관리자 공지사항</h2>
                </div>
          </div>
          <br>
          
          <div class="row">
              <div class="col">

                <nav class="navbar bg-light">
                  <div class="container-fluid">
                    <form class="d-flex" role="search">
                      <select class="form-select myjob me-1" id="type" aria-label="Default select example" id="my">
                        <!-- <option value="기본"></option> -->
                          <option value="아이디">아이디</option>
                          <option value="회원명">회원명</option>
                        </select>

                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                  </div>
                </nav>
                  
              </div>
              <div>
                
              </div>
          </div>
         
          <div class="row">
              <div class="col">
                  <table class="table table-hover mytb" id="announceTable">
                          <thead class="table-light">
                              <thead>
                                
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">제목</th>
                                  <!-- <th scope="col">작성자</th>
                                  <th scope="col">아이디</th> -->
                                  <th scope="col">회원등급</th>
                              </tr>
                              </thead>
                          </thead>
                          <tbody>
                            <tr>
                              <!-- <td>1</td>
                              <td>긴급!! 꼭 봐주세요</td>
                              <td></td>
                              <td></td>
                              <td>우지은</td>
                              <td>jieun987</td>
                              <td>관리자</td>
                            </tr> -->
                          </tbody>
                          
                        </table>
              </div>
          </div>
          <br>
          <br>
        
          <!-- 게시판 페이지 부분 폼 => 한 페이지당 10명씩 한번에 5페이지, 양쪽 끝 버튼은 맨 처음과 맨 끝으로 이동 -->

          
          <!-- 화면에 그려질 첫 번째 페이지 : 화면에 그려질 마지막 페이지 - (한 화면에 나타낼 페이지 - 1)
          (단, 계산된 값이 0 이하이면 첫번째 페이지는 1이다.)
        
        화면에 그려질 마지막 페이지 : 화면에 보여질 페이지 그룹 * 한 화면에 나타낼 페이지
          (단, 계산된 값이 총 페이지수보다 많으면 마지막 페이지는 은 총 페이지 수이다.) -->

          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                  </a>
              </li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&lt;</span>
                  </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&gt;</span>
                </a>
              </li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>


          <a class="#" href="./write_announce.html" style="text-decoration-line: none ;">
          <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <!-- <button class="btn btn-primary me-md-2" type="button">Button</button> -->
            <button class="btn btn-primary btn-warning" type="button">공지사항 작성</button>
          </div>
          </a>

      </div>
      
         
      </div>
      </div>
    </div>
  </nav>

  <script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/9.14.0/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.14.0/firebase-analytics.js";
    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries
  
    // Your web app's Firebase configuration
    // For Firebase JS SDK v7.20.0 and later, measurementId is optional
    const firebaseConfig = {
      apiKey: "AIzaSyD5Siv5pV8pGTXpgd8OAMdQd8JTp390u5w",
      authDomain: "newrepbook-587cf.firebaseapp.com",
      databaseURL: "https://newrepbook-587cf-default-rtdb.firebaseio.com",
      projectId: "newrepbook-587cf",
      storageBucket: "newrepbook-587cf.appspot.com",
      messagingSenderId: "986136626008",
      appId: "1:986136626008:web:bdd8f7beeceae8f66c5b2d",
      measurementId: "G-C25WXHVHZE"
    };
  
    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);

    import {getDatabase, ref, set, update, remove, onValue}
    from "https://www.gstatic.com/firebasejs/9.14.0/firebase-database.js";


    //$('#adminListDbTable td').remove();
    //console.log("test")
    var rowNum = 0;

    const db = getDatabase(app);
    const dbref = ref(db, 'announce');

    onValue(dbref, (snapshot) => {
      snapshot.forEach((childSnapshot) => {
        const childKey = childSnapshot.key;
        const childData = childSnapshot.val();

        rowNum += 1;
        var row =
        "<tr><td>" + rowNum +
          "</td><td>" + childData.title +
            // "</td><td>" + childData.comment +
              "</td><td>" + "관리자" +
              "</td></tr>"
              console.log(row);

        $(row).appendTo('#announceTable')

      });
    }, {
      onlyOnce: true
    });


  </script>

</body>
</html>