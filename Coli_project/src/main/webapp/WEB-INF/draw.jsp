<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <title>DrawColi</title>
  <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="format-detection" content="telephone=no">
   <meta name="apple-mobile-web-app-capable" content="yes">
   <meta name="author" content="TemplatesJungle">
   <meta name="keywords" content="Free HTML Template">
   <meta name="description" content="Free HTML Template">
   
   <link rel="stylesheet" type="text/css" href="${cpath}/icomoon/icomoon.css">
   <link rel="stylesheet" type="text/css" href="${cpath}/css/vendor.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="${cpath}/css/style.css">
   
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&display=swap"
      rel="stylesheet">   
      
   <script src="https://cdn.jsdelivr.net/npm/@mediapipe/pose/pose.js" crossorigin="anonymous"></script>
   <style>
  /* 페이지 전체에 대한 기본 스타일 */
  body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background: #f0f0f0;
  }
  
  /* 상단 네비게이션 바 스타일 */
  .navbar {
    background-color: #333;
    color: white;
    padding: 10px 20px;
    display: flex;
    align-items: center;
  }
  
  .navbar img {
    margin-right: 10px;
  }
  
  .navbar a {
    color: #4CAF50; /* 초록색 로고 텍스트 */
    text-decoration: none;
    font-size: 24px;
  }

  /* 그리드 레이아웃 스타일 */
  .grid-container {
    display: grid;
    grid-template-columns: 1fr 3fr 1fr; /* 세 부분으로 나누기 */
    gap: 10px;
    padding: 10px;
  }
  
  .grid-item {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    border: 1px solid #ddd;
  }
  
  /* 왼쪽 메뉴 스타일 */
  #action-selection {
    font-size: 16px;
    text-align: left;
    display: flex;
    flex-wrap: wrap; /* 줄 바꿈 설정 */
    gap: 5px; /* 버튼 사이의 간격 */
  }

  #action-selection a {
    display: block;
    width: max-content; /* 텍스트 크기에 맞게 조절됨 */
    height: max-content;
    padding: 10px;
    margin: 2px 0;
    border: 1px solid #ddd;
    border-radius: 4px;
    background-color: #f7f7f7;
    text-decoration: none;
    color: black;
    text-align: center;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

  /* 오른쪽 섹션 스타일 */
  #my-work-history select {
    width: calc(100% - 40px); /* 아이콘 공간 빼고 너비 */
    padding: 10px;
    margin-right: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
  }
  
  #my-work-history img {
    vertical-align: middle;
  }

  html, body {
    height: 100%;
  }

  body {
    display: flex;
    flex-direction: column;
  }

  .grid-container {
    flex: 1; /* 중요: 그리드 컨테이너가 남은 공간을 모두 차지하도록 설정 */
  }

  .navbar {
    justify-content: space-between; /* 로고와 내 작업내역을 간격을 두고 정렬 */
  }

  /* 내 작업내역 스타일 */
  .my-work {
    display: flex;
    align-items: center;
  }

  .my-work select {
    margin-right: 10px;
    width: 150px; /* 선택창의 너비 설정 */
  }
</style>
</head>
<body>
   <%@ include file="/WEB-INF/header.jsp"%>
      <section id="login-intro" class="login-section"">
      <div class="log-in"">
         <div class="login-top"">
            <img src="${cpath}/images/main-banner1.png" alt="banner" class="login-img">
            <div class="login-content">
               <h2 class="login-title">Draw</h2>
            </div><!--banner-content-->
         </div><!--slider-item-->
                  
         <div class="contentarea">
              
              <!-- 상단 네비게이션 바 -->
<div class="navbar">
  <img src="home-icon.png" alt="Home"> <!-- 집 아이콘 이미지 -->
  <a href="/">DrawColi</a> <!-- 로고와 메인 페이지 링크 -->

  <div class="my-work">
    <select name="work-history" id="work-history">
      <option value="option1">옵션 1</option>
      <option value="option2">옵션 2</option>
      <!-- 여기에 더 많은 옵션을 추가할 수 있습니다. -->
    </select>
    <img src="folder-icon.png" alt="Folder"> <!-- 폴더 아이콘 이미지 -->
  </div>
</div>

<div class="grid-container">
  
  <!-- 왼쪽 섹션: 동작 선택 -->
  <div class="grid-item" id="action-selection">
    <a href="#">양손 팔을 든다</a>
    <a href="#">팔꿈치를 굽힌다</a>
    <a href="#">다리를 굽힌다</a>
    <a href="#">기대어 앉다</a>
    <a href="#">앉다</a>
    <a href="#">서다</a>
    <a href="#">눕다</a>
    <a href="#">두 손 기대다</a>
    <a href="#">활짝</a>
    <div>
      <p>이미지 및 음성을 업로드 하세요.</p>
      <input type="file" id="fileUpload" class="upload-link"/>
      <img id="uploadedImage" style="max-width: 100%; display:none;" alt="Uploaded Image">
    </div>
    <div class="camera">
                  <video id="video">Video stream not available.</video>
              </div>
              <div><button id="startbutton">Take photo</button></div>
              <canvas id="canvas" style="display:none;"></canvas>
    <div>
      <span>남은 문장 제한 횟수</span>
      <span>9/10</span>
    </div>
    <div>
    <a href="#">생성하기</a>
    </div>
  </div>

  <!-- 중앙 섹션: 내 이미지 -->
  <div class="grid-item" id="my-image">
    <p>내 이미지</p>
    <div class="output">
                  <img id="photo" alt="The screen capture will appear in this box.">
      </div>
    <!-- 이미지 내용이 여기에 들어갑니다. -->
  </div>

  <!-- 오른쪽 섹션: 현재 작업 내역 -->
  <div class="grid-item" id="my-work-history">
    <p>현재 작업 내역</p>
    <!-- ... -->
  </div>
</div>
          </div>
          <button id="savebutton">Save Results</button>
   
   
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
      
   <script src="${cpath}/js/jquery-1.11.0.min.js"></script>
   <script src="${cpath}/js/ui-easing.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"></script>
   <script src="${cpath}/js/plugins.js"></script>
   <script src="${cpath}/js/script.js"></script>
   
    <script type="text/javascript">
    (function () {
        var width = 320;
        var height = 0;
        var streaming = false;
        var video = null;
        var canvas = null;
        var uploadedImage = null;
        var photo = null;
        var startbutton = null;
        
        // 전역으로 pose 객체 선언
        var pose = null;

        function startup() {
            video = document.getElementById('video');
            canvas = document.getElementById('canvas');
            photo = document.getElementById('photo');
            fileUpload_draw = document.getElementById('fileUpload');
            startbutton = document.getElementById('startbutton');
            uploadedImage = document.getElementById('uploadedImage');

            navigator.mediaDevices.getUserMedia({
                    video: true,
                    audio: false
                })
                .then(function (stream) {
                    video.srcObject = stream;
                    video.play();
                })
                .catch(function (err) {
                    console.log("An error occurred: " + err);
                });

            video.addEventListener('canplay', function (ev) {
                if (!streaming) {
                    height = video.videoHeight / (video.videoWidth / width);

                    if (isNaN(height)) {
                        height = width / (4 / 3);
                    }

                    video.setAttribute('width', width);
                    video.setAttribute('height', height);
                    canvas.setAttribute('width', width);
                    canvas.setAttribute('height', height);
                    streaming = true;
                }
            }, false);

            startbutton.addEventListener('click', function (ev) {
                takepicture();
                ev.preventDefault();
            }, false);
            
            fileUpload_draw.onchange = () => {
             	  const selectedFile = fileUpload_draw.files[0];
             	  if (selectedFile) {
                  const reader = new FileReader();
                  reader.onload = function (e) {
                  	uploadedImage.src = e.target.result;
                  };
                  reader.readAsDataURL(selectedFile);
             	  takepicture_uploadfile();
             	};
            }
            
            var saveButton = document.getElementById('savebutton');
            saveButton.addEventListener('click', function (ev) {
                saveResults();
                ev.preventDefault();
            }, false);
            

            clearphoto();
        }

        function saveResults() {
            if (pose && pose.lastResults && pose.lastResults.poseLandmarks) {
                // poseLandmarks 데이터에서 x, y, z 값을 객체 형태로 추출하여 배열로 변환
                var landmarksData = pose.lastResults.poseLandmarks.map(landmark => ({
                    x: landmark.x,
                    y: landmark.y,
                    z: landmark.z
                }));

                // 결과 배열을 JSON 문자열로 변환
                var jsonString = JSON.stringify(landmarksData, null, 2); // 포맷팅을 위해 추가적인 인자 사용

                // JSON 파일 다운로드
                downloadJSON(jsonString, 'pose_landmarks.json');
            } else {
                console.log('No results to save.');
            }
        }

        function downloadJSON(data, filename) {
            var blob = new Blob([data], { type: 'application/json' });
            var link = document.createElement('a');
            link.href = URL.createObjectURL(blob);
            link.download = filename;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }

        function clearphoto() {
            var context = canvas.getContext('2d');
            context.fillStyle = "#AAA";
            context.fillRect(0, 0, canvas.width, canvas.height);
            var data = canvas.toDataURL('image/png');
            // 이미지 쳐박기
            photo.setAttribute('src', data);
        }

        function takepicture() {
            var context = canvas.getContext('2d');
            if (width && height) {
            	canvas.width = width;
                canvas.height = height;
                context.drawImage(video, 0, 0, width, height);

                // 이미지 데이터 얻기
                var imageData = context.getImageData(0, 0, width, height);
                var data = canvas.toDataURL('image/png');
                photo.setAttribute('src', data);
                // 딜레이를 둔 후에 이미지 분석
                setTimeout(function () {
                    analyzeImage(imageData);
                }, 1000);
            } else {
            	clearphoto();
            }
        }
        
        function takepicture_uploadfile() {
            var context = canvas.getContext('2d');
            if (width && height) {
                canvas.height = height;
                var img = uploadedImage;
                img.onload = function() {
                	context.drawImage(img, 0, 0, width, height);
                    // 이미지 데이터 얻기
                    var imageData = context.getImageData(0, 0, width, height);
                    var data = canvas.toDataURL('image/png');
                    photo.setAttribute('src', data);
                    // 딜레이를 둔 후에 이미지 분석
                    setTimeout(function () {
                        analyzeImage(imageData);
                    }, 1000);
                }
            } else {
                clearphoto();
            }
        }

        function analyzeImage(imageData) {
            if (!pose) {
                pose = new Pose({
                    locateFile: (file) => {
                       return 'https://cdn.jsdelivr.net/npm/@mediapipe/pose/' + file;
                    }
                });

                pose.setOptions({
                    upperBodyOnly: true,
                    modelComplexity: 1,
                    smoothLandmarks: true,
                    enableSegmentation: false,
                    minDetectionConfidence: 0.5,
                    minTrackingConfidence: 0.5
                });

                pose.onResults((results) => {
                    console.log(results);
                    pose.lastResults = results; // 결과 업데이트
                    
                });
            }

            // Mediapipe에 이미지 전달
            pose.send({
                image: imageData
            });
        }
        


        window.addEventListener('load', startup, false);
    })();

	
    </script>
      
</body>

</html>