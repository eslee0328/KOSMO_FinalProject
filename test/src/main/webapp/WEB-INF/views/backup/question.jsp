<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		
		<!-- Breadcrumb -->
		<div class="breadcrumb-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-12 col-12">
						<nav aria-label="breadcrumb" class="page-breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">공지사항</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">공지사항</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->
		<div class="container" style="max-width: 2000px;">
			<div class="col-md-12">
				<section class="section section-specialities">
					<div class="container-fluid">
						<div class="section-header text-center">
							<h2>공지사항</h2>
							<p class="sub-title">Dr.Link의 공지사항을 알려드립니다.</p>
						</div>
						<!--  
						<div style="float: right;">
							<select id="cntPerPage" name="sel" onchange="selChange()">
								<option value="5"
									<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄
									보기</option>
								<option value="10"
									<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄
									보기</option>
								<option value="15"
									<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄
									보기</option>
								<option value="20"
									<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄
									보기</option>
							</select>
						</div>
						-->
						<!-- 옵션선택 끝 -->
						<div class="panel panel-default">
							<div class="panel-heading"></div>
							<div class="panel-body">
								<table class="table table-hover">
									<thead>
										<tr>
											<th style="text-align: center">글 번호</th>
											<th style="text-align: center">글 제목</th>
											<th style="text-align: center">글 등록일자</th>
											<th style="text-align: center">조회수</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="board" items="${h_boardList}">
										<tr>
											<td style="text-align: center">${board.hospital_board_num}</td>
											<td style="text-align: center"><a href="notice_detail?b_num=${board.hospital_board_num}">${board.hospital_title}</a></td>
											<td style="text-align: center">${board.hospital_regdate}</td>
											<td style="text-align: center">${board.h_watched}</td>
										</tr>
									</c:forEach>
									</tbody>

								</table>

							</div>

						</div>
							
						<div style="display: block; text-align: center;">
								<c:choose>
									<c:when test="${page_num == 1}">
										<b><a href="notice?d_page=${page_num}">&lt;${page_num}&gt;</a></b>
									</c:when>
									<c:when test="${page_num != 1 }">
									<c:forEach begin="1" end="${page_num}" var="p">
										<b><a href="notice?d_page=${p}">&lt;${p}&gt;</a></b>
									</c:forEach>
									</c:when>
								</c:choose>
						</div>
						<!--  
						<div class="col-lg-12" style="text-align: right;">
							<button type="button" class="btn btn-outline btn-primary ">
								<i class="fa fa-edit fa-fw"></i> 공지사항 작성
							</button>
						</div>
						-->
					</div>
			</div>

			</section>
		</div>
	</div>
	<!-- /notice Table -->
