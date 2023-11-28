<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}" />
<c:set var="auth" value="${SPRING_SECURITY_CONTEXT.authentication.authorities}" />

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
    <link rel="stylesheet" type="text/css" href="${cpath}/css/pricing-plan.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/css/form.css">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>  
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&display=swap"
        rel="stylesheet">
</head>
<body style="overflow-x: hidden;">
    <%@ include file="/WEB-INF/header.jsp"%>
    <section id="login-intro" class="login-section">
    <div class="log-in">
        <div class="login-top">
            <img src="${cpath}/images/main-banner1.png" alt="banner" class="login-img">
            <div class="login-content">
                <h2 class="login-title">Upload</h2>
            </div><!--banner-content-->
        </div><!--slider-item-->
    </div>
    </section>
    <div id="write-container">
    <div id="contents">
        <div class="xans-element- xans-board xans-board-writepackage-4 xans-board-writepackage xans-board-4">
            <div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
                <div class="title">
                    <h2>
                        <font color="#555555">COLI GALLERY</font>
                    </h2>
                    <p>회원님들의 작품을 올려주세요.</p>
                </div>
            </div>
            
            <!-- 글 작성 폼 -->
            <form id="articleForm" action="${cpath}/board/register" method="post" enctype="multipart/form-data">
                <div class="xans-element- xans-board xans-board-write-4 xans-board-write xans-board-4">
                    <div class="ec-base-table typeWrite ">
                        <table border="1" summary>
                            <caption>글쓰기 폼</caption>
                            <colgroup>
                                <col style="width:130px;">
                                <col style="width:auto;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">제목</th>
                                    <td>
                                        <input id="atc_title" name="atc_title" fw-filter="isFill" fw-label="제목" fw-msg class="inputTypeText" placeholder maxlength="125" value type="text">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="clear">
                                        <div class="fr-box fr-ltr ec-froala-theme fr-basic fr-top" role="application">
                                            <div class="fr-wrapper" dir="ltr">
                                                <div id="atc_content" class="fr-view" dir="ltr" contenteditable="true" style="min-height: 400px;" aria-disabled="false" spellcheck="true">
                                                    "갤러리 게시판과 관련 없는 글 혹은 악의적인 비방글, 운영방해성 항의글, 비속어 및 욕설 등은 사전 통보 없이 삭제처리됨을 알려드립니다! "
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody>
                                <tr>
                                    <th scope="row" style="border: none!important;">첨부파일1</th>
                                    <td style="border: none!important;">
                                        <input name="attach_file[]" type="file" style="background-color: transparent;" onchange="uploadFiles(articleId,0)">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">첨부파일2</th>
                                    <td>
                                        <input name="attach_file[]" type="file" style="background-color: transparent;" onchange="uploadFiles(articleId,1)">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">첨부파일3</th>
                                    <td>
                                        <input name="attach_file[]" type="file" style="background-color: transparent;" onchange="uploadFiles(articleId,2)">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">첨부파일4</th>
                                    <td>
                                        <input name="attach_file[]" type="file" style="background-color: transparent;" onchange="uploadFiles(articleId,3)">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">첨부파일5</th>
                                    <td>
                                        <input name="attach_file[]" type="file" style="background-color: transparent;" onchange="uploadFiles(articleId,4)">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="ec-base-button ">
                        <span class="gLeft">
                            <a href="${cpath}/board/gallery" class="Button button-rounded button-small" >목록</a>
                        </span>
                        <span class="gRight">
                            <a href="#" onclick="submitArticleForm()" class="Button button-rounded button-normal black">등록</a>
                            <a href="#" onclick="cancelRegistration()" class="Button button-rounded button-normal">취소</a>
                        </span>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>
    
    <!-- 추가된 부분: 모달 창 -->
   <div id="uploadSuccessModal" class="modal fade" tabindex="-1" aria-labelledby="uploadSuccessModalLabel" aria-hidden="true">
       <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <h5 class="modal-title" id="uploadSuccessModalLabel">업로드 완료</h5>
                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body">
                   업로드가 완료되었습니다!
               </div>
               <div class="modal-footer">
                   <a href="${cpath}/board/gallery" class="btn btn-secondary">확인</a>
               </div>
           </div>
       </div>
   </div>
    
    <script>
    var articleId;
    var model_articleId = "<c:out value="${articleId}"/>";
    if (typeof model_articleId != "undefined" && 
    		model_articleId != "null" &&
    		model_articleId != ""){
    	articleId = model_articleId;
    }
    function submitArticleForm() {
        var formData = new FormData();
        formData.append('atc_title', $("#atc_title").val());
        formData.append('atc_content', $("#atc_content").text());
        formData.append('atc_id', articleId);
        $.ajax({
            type: 'POST',
            processData: false,
            contentType: false,
            url: '${cpath}/board/register',
            data: formData,
            success: function (response) {
          		alert("글 등록이 완료됐습니다.");
          		//$('#uploadSuccessModal').modal('show');
          		location.href="/boot/board/gallery";
            },
            error: function (error) {
            	alert("글 등록에 실패했습니다.");
                console.error('글 데이터 전송 오류:', error.responseText);
                // TODO: 글 데이터 전송 오류 처리 (예: 알림창 등)
            }
        });
    }
    
    function uploadFiles(articleId, idx) {
        var formData = new FormData();
        if (typeof articleId == "undefined" || 
        		articleId == "null" || 
        			articleId == ""){
        	articleId = 0;
        }
        formData.append('articleId', articleId);

        // 첨부 파일들을 formData에 추가
        var files = $("input[name='attach_file[]']");
        formData.append('files', files[idx].files[0]);

        $.ajax({
            type: 'POST',
            contentType: false,
            processData: false,
            url: '${cpath}/board/upload',
            data: formData,
            success: function (response) {
                console.log('파일 업로드 성공:', response);
                // 업로드가 완료되면 모달 창을 띄우기
                //alert("파일 업로드에 성공했습니다.");
                changeArticleId(response);
                
            },
            error: function (error) {
            	alert("파일 업로드에 실패했습니다.");
                console.error('파일 업로드 오류:', error.responseText);
                // TODO: 파일 업로드 오류에 대한 처리
            }
        });
    }

	    function changeArticleId(str) {
	        console.log(articleId);
	        articleId = str;
	    }
        function cancelRegistration() {
            window.history.back();
        }
    </script>
    <script>
    // 문서가 로드된 후 실행될 JavaScript 코드
        document.addEventListener('DOMContentLoaded', function() {
            // content_BODY 요소를 선택
            var atc_content = document.getElementById('atc_content');

            // content_BODY를 클릭할 때 실행되는 함수
            atc_content.addEventListener('click', function() {
                // content_BODY 내용을 빈 문자열로 설정하여 텍스트를 사라지게 함
                atc_content.innerHTML = '';
            });
        });
    </script>
    
    <script src="${cpath}/js/jquery-1.11.0.min.js"></script>
    <script src="${cpath}/js/ui-easing.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
            crossorigin="anonymous"></script>
    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
    <script src="${cpath}/js/plugins.js"></script>
    <script src="${cpath}/js/script.js"></script>
    
    
</body>

</html>