	<jsp:include page="navbarjsp.jsp" />
	<% 
    if(session.getAttribute("user")==null)
    	response.sendRedirect("login.jsp");
	%>
	<div class="container" id="home">
		<div class="row text-center ">
			<div class="col-md-3 head-main ">
				<a href="student_dashboard2.jsp" style="color: #47d147"> <i
					class="fa fa-home" style="color: #47d147"></i></a>

				<h3>
					<a href="student_dashboard2.jsp" style="color: #47d147">HOME</a>
				</h3>

			</div>
			<div class="col-md-3 head-main">
				<a href="ComplaintDetails.jsp" style="color: #47d147"><i
					class="fa fa-edit" style="color: #47d147"></i></a>

				<h3>
					<a href="ComplaintDetails.jsp" style="color: #47d147">ADD
						COMPLAIN</a>
				</h3>

			</div>
			<div class="col-md-3 head-main">
				<a href="status.jsp" style="color: #47d147"> <i
					class="fa fa-check" style="color: #47d147"></i></a>

				<h3>
					<a href="status.jsp" style="color: #47d147">STATUS</a>
				</h3>

			</div>
			<div class="col-md-3 head-main">
				<a href="Feedback.jsp" style="color: #47d147"><i
					class="fa fa-comment" style="color: #47d147"></i></a>

				<h3>
					<a href="Feedback.jsp" style="color: #47d147">FEEDBACK</a>
				</h3>

			</div>

		</div>
	</div>
	<!--End Header section  -->
	<!--About Section-->
	<section class="for-full-back color-light " id="about">
		<div class="container">

			<div class="row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h1 style="color: #47d147">ABOUT PORTAL</h1>
					<h4>
						<strong>Ragging has ruined countless innocent lives and
							careers. In order to eradicate it, honourable Supreme Court in
							Civil Appeal No. 887 of 2009, passed the judgement wherein
							guidelines were issued for setting up of a Central Crisis Hotline
							and Anti-Ragging database. </strong>
					</h4>
				</div>

			</div>

			<!--footer Section -->
			<div class="for-full-back " id="footer">2018
				www.antiraggingindia.com | All Right Reserved</div>
		</div>
	</section>
