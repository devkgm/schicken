<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>S치킨-그룹웨어</title>
    <c:import url="../../template/head.jsp"/>

</head>

<body>
<!-- ======= Header ======= -->
<c:import url="../../template/header.jsp"/>
<!-- ======= Sidebar ======= -->
<c:import url="../../template/sidebar.jsp"/>
<main id="main" class="main">
    <section class="section erp ms-auto me-auto">
        <div class="pagetitle">
            <h1>발주내역</h1>
        </div>
        <div class="row">
            <div class="col">
                <div class="card">
                    <c:import url="./orderSearch.jsp"/>
                    <div class="card-body mt-3 row">
                        <div class="p-3 d-flex" >
                            <div class="me-2" style="width: 500px;">
                                <div style="line-height: 40px; padding-bottom: 3px;">
                                    <b>목록</b>
                                </div>
                                <div class="mb-3" style="box-shadow: 0 0 0 1px #ccc inset;" >
                                    <div id="orderListContainer" ></div>
                                </div>
                            </div>
                            <div style="width: calc(100% - 500px);">
                                <div class="d-flex justify-content-between" style="line-height: 40px; padding-bottom: 3px;">
                                    <b>상세</b>
                                    <div>
                                        <button class="btn btn-outline-primary d-none" id="history">내역</button>
                                        <button class="btn btn-outline-primary d-none" id="orderPreviewButton">발주서</button>
                                        <button class="btn btn-primary d-none" id="orderButton">발주</button>
                                    </div>
                                </div>
                                <div class="mb-3" style="box-shadow: 0 0 0 1px #ccc inset;" >
                                    <div id="productListContainer"></div>
                                </div>
                                <div class="d-flex justify-content-end">
                                    <div id="modifyButtons" class="d-none">
                                        <button class="btn btn-outline-primary" id="approveOrderButton">발주</button>
                                        <button class="btn btn-outline-danger" id="refuseOrderButton">삭제</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main><!-- End #main -->
<div class="modal" tabindex="-1" id="history-modal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">입고 내역</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style="height: 400px">
                <div class="row overflow-auto" style="max-height: 400px">
                    <table class="table text-center">
                        <thead>
                        <tr>
                            <th scope="col">내용</th>
                            <th scope="col">날짜</th>
                        </tr>
                        </thead>
                        <tbody id="historyListContainer">

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>



<!-- ======= Footer ======= -->
<c:import url="../../template/footer.jsp"/>
<!-- ======= Script ======= -->
<c:import url="../../template/script.jsp"/>
<script type="module" src="/js/franchise/orderList.js"> </script>

</body>

</html>