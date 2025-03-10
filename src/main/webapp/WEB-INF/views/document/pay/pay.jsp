<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
    <!-- css 파일 -->
    <link rel="stylesheet" href="/css/documentDetail.css">
	<script src="/js/document/documentDetail.js"></script>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>

    <span>
        <p style="line-height: 150%; font-family: 맑은 고딕; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;"><span
                style="font-family: 맑은 고딕; font-size: 10pt;"></span>&nbsp;</p>

        <table
            style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic,dotum,arial,tahoma; margin-top: 1px; border-collapse: collapse;">
            <!-- Header -->
            <colgroup>
                <col width="310" />
                <col width="490" />
            </colgroup>
            <form class="form-control" method="POST" action="../document/add" enctype="multipart/form-data">
            <tbody>
                <tr>
                    <td style="padding: 0px !important; border: 0px currentColor; border-image: none;text-align: right;font-weight: bold; vertical-align: middle;"
                    colspan="2" class="">
                        <button>인쇄미리보기</button>
                        <button>상신</button>
                        <button>취소</button>
                        <br>
                        <button>불러오기</button>
                        <button>임시저장</button>
                    </td>
                </tr>

                <tr>

                    <td style="background: white; padding: 0px !important; border: 0px currentColor; border-image: none; height: 90px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: middle;"
                        colspan="2" class=""> 지출결의서
                        <div style="text-align: right;">

                            <!-- Button to Open the Modal -->
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
							  결재선지정
							</button>

							<!-- The Modal -->
							<div class="modal fade" id="myModal">
							  <div class="modal-dialog modal-dialog-scrollable" id="modalContent">
							    <div class="modal-content">
							      <!-- Modal Header -->
							      <div class="modal-header" >
							        <h4 class="modal-title">결재선지정</h4>
							        <button type="button" class="close" data-dismiss="modal">&times;</button>
							      </div>
							      <!-- Modal body -->
							      <div class="modal-body">
							        <!-- 모달 내용 시작 -->
							        <div class="container-fluid mmdd">
							          <div class="row mmdd">
							            <div class="col-md-4 mmdd">
							                <div style="text-align: center;">조직도</div>
							                <div id="org-chart"></div>
							            </div>
							            <div class="col-md-8 mmdd">
							              <div id="right-top" class="row ssdd" style="background-color: lightblue;">오른쪽 컬럼 상단</div>
							              <div id="right-bottom" class="row ssdd" style="background-color: lightgreen;">오른쪽 컬럼 하단</div>
							            </div>
							          </div>
							        </div>
							        <!-- 모달 내용 끝 -->
							      </div>
							      <!-- Modal footer -->
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							  </div>
							</div>

                        </div>
                    </td>

                    <!-- <td><button>결제미리보기</button></td> -->

                </tr>

                <tr>
                    <td
                        style="background: white; padding: 0px !important; border: currentColor; border-image: none; width: 506px; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">

                        <table
                            style="border: 1px solid rgb(0, 0, 0); border-image: none; width: 356px; height: 130px; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
                            <!-- User -->
                            <colgroup>
                                <col width="100" />
                                <col width="210" />
                            </colgroup>

                            <tbody>
                                <tr>
                                    <td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
                                        문서번호
                                    </td>
                                    <td style="background: rgb(255, 255, 255); padding: 0; border: 1px solid black; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
                                        <div style="width: 100%; text-align: center;">
                                            <input type="text" class="form-control" id="" name="" style="text-align: center;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
                                        문서종류
                                    </td>
                                    <td style="background: rgb(255, 255, 255); padding: 0; border: 1px solid black; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
                                        <div style="width: 100%; text-align: center;">
                                            <input type="text" class="form-control" id="" name="" style="text-align: center;" value="지출결의서" readonly>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
                                        신청일
                                    </td>
                                    <td style="background: rgb(255, 255, 255); padding: 0; border: 1px solid black; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
                                        <div style="width: 100%; text-align: center;">
                                            <input type="text" class="form-control" id="" name="" style="text-align: center;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
                                        기안자
                                    </td>
                                    <td style="background: rgb(255, 255, 255); padding: 0; border: 1px solid black; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
                                        <div style="width: 100%; text-align: center;">
                                            <input type="text" class="form-control" id="" name="" style="text-align: center;">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
                                        부서
                                    </td>
                                    <td style="background: rgb(255, 255, 255); padding: 0; border: none; height: 24px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
                                        <div style="width: 100%; text-align: center;">
                                            <input type="text" class="form-control" id="" name="" style="text-align: center;">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td
                        style="background: white; padding: 0px !important; border: currentColor; border-image: none; width: 293px; text-align: right; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">

                        <p style="text-align: right; line-height: 150%; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;">
                            <span class="sign_type1_inline"style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt;"
                                data-is-reception="" data-group-type="type1" data-group-max-count="7" data-group-name="결재선" data-group-seq="0">
                                <span class="sign_tit_wrap">
                                    <span class="sign_tit"><strong>결재선</strong></span>
                                </span>

                                <span class="sign_member_wrap" id="">
                                    <span class="sign_member">
                                        <span class="sign_rank_wrap">
                                            <span class="sign_rank">직급</span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">이름</span>
                                        </span>

                                        <span class="sign_wrap">
                                            <span class="sign_name"><strong>서명</strong></span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">날짜</span>
                                        </span>
                                    </span>
                                </span>
                                <span class="sign_member_wrap" id="">
                                    <span class="sign_member">
                                        <span class="sign_rank_wrap">
                                            <span class="sign_rank">직급</span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">이름</span>
                                        </span>
                                        <span class="sign_wrap">
                                            <span class="sign_name"><strong>서명</strong></span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">날짜</span>
                                        </span>
                                    </span>
                                </span>
                                <span class="sign_member_wrap" id="">
                                    <span class="sign_member">
                                        <span class="sign_rank_wrap">
                                            <span class="sign_rank">직급</span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">이름</span>
                                        </span>
                                        <span class="sign_wrap">
                                            <span class="sign_name"><strong>서명</strong></span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">날짜</span>
                                        </span>
                                    </span>
                                </span>
                                <span class="sign_member_wrap" id="">
                                    <span class="sign_member">
                                        <span class="sign_rank_wrap">
                                            <span class="sign_rank">직급</span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">이름</span>
                                        </span>
                                        <span class="sign_wrap">
                                            <span class="sign_name"><strong>서명</strong></span>
                                        </span>
                                        <span class="sign_date_wrap">
                                            <span class="sign_date " id="">날짜</span>
                                        </span>
                                    </span>
                                </span>

                            </span>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
        <table
            style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; height: 89px; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; margin-top: 10px; border-collapse: collapse;">
            <colgroup>
                <col width="100" />
                <col width="300" />

            </colgroup>
            <tbody>
                <tr>
                    <td
                        style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; border-image: none; height: 10px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bolder; vertical-align: middle;">
                        대상자 </td>
                    <td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 10px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"
                        colspan="5">

                        <input type="text" class="form-control" id="title" name="title" style="width: 100%;">
                    </td>
                </tr>

                <tr>
                    <td
                        style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; border-image: none; height: 10px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bolder; vertical-align: middle;">
                        참조 </td>
                    <td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 10px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"
                        colspan="5">

                        <input type="text" class="form-control" id="title" name="title" style="width: 100%; text-align: center;">
                    </td>
                </tr>

                <tr>
                    <td
                        style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; border-image: none; height: 10px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bolder; vertical-align: middle;">
                        제목 </td>
                    <td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 10px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;"
                        colspan="5">

                        <input type="text" class="form-control" id="title" name="title" style="width: 100%;">
                    </td>
                </tr>


            </tbody>
        </table>
        <table
            style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; height: 10px; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
            <tbody>
                <tr>
                    <td style="background: rgb(226, 226, 226); padding: 5px; border: 1px solid black; border-image: none; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bolder; vertical-align: middle;"
                        colspan="2">
                        지출사유
                    </td>
                </tr>
                <tr>
                    <td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; height: 50px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
                         <div id="editor"></div>
                    </td>
                </tr>

            </tbody>
        </table>
        <div>
            <label for="file">파일첨부하기</label><br>
           <input type="file">
        </div>
    </form>
        <p
            style="line-height: 150%; font-family: &quot;맑은 고딕&quot;; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;">
            &nbsp;</p>
    </span>

<script>
    ClassicEditor
        .create(document.querySelector('#editor'))
        .then(editor => {
            editor.editing.view.change(writer => {
                writer.setStyle('height', '20vh', editor.editing.view.document.getRoot());
            });
        })
        .catch(error => {
            console.error(error);
        });

</script>

</body>

</html>
