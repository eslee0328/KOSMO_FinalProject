<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Main Wrapper -->
<div class="main-wrapper">


	<!-- Page Content -->
	<div class="content success-page-cont">
		<div class="container-fluid">

			<div class="row justify-content-center">
				<div class="col-lg-6">

					<!-- Success Card -->
					<div class="card success-card">
						<div class="card-body">
							<div class="success-cont mb-4">
								<i class="fas fa-check"></i>
								<h3>AI 진단이 완료되었습니다!</h3>
								<h4>AI 진단번호 : 245</h4>
							</div>
							<div class="clinic-booking" width="200 !important">
								<a class="apt-btn" href="search">예약하기</a>
							</div>
						</div>
					</div>
					<!-- /Success Card -->
					<div class="card">
						<div class="card-header text-center">
							<h3>진단 예측 결과</h3>
						</div>
						<!-- 카드헤더 -->

						<div class="mb-3">
							<p class="lead text-center m-3"><mark>[${predict}]%</mark>의 확률로 <mark>[${disease}]</mark>입니다.</p>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-lg-7 mb-3"
									style="margin-right: 30px !important;">
									<h3>●${patient_ai.ai_symptom }</h3>
									<p class="">
									<img
								src="\\\\192.168.0.8\\share\\aiTest\\${patient_ai.symptom_photo }"
								class="img-fluid" alt="User Image">
										
									</p>
								</div>
								<!-- 증상설명 -->
								<div class="col-lg-4 mb-3">
									<div class="text-center"
										style="width: 80% !important; margin-left: 50px;">
										<div class="card text-center doctor-book-card">
											<img src="${path}/resources/assets/img/eyeExample1.jpg"
												alt="" class="img-fluid">
											<div class="doctor-book-card-content tile-card-content-1">
												<div>
													<h3 class="card-title mb-0">사진 예시</h3>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 사진예시 -->
							</div>
							<!-- row1 -->

						</div>
						<!-- 카드바디 -->

					</div>
					<!-- card -->

				</div>
			</div>

		</div>
	</div>
	<!-- /Page Content -->




</div>
<!-- /Main Wrapper -->

<!-- jQuery -->
<script src="${path}/resources/assets/js/jquery.min.js"></script>

<!-- Bootstrap Core JS -->
<script src="${path}/resources/assets/js/popper.min.js"></script>
<script src="${path}/resources/assets/js/bootstrap.min.js"></script>

<!-- Custom JS -->
<script src="${path}/resources/assets/js/script.js"></script>

</body>
</html>