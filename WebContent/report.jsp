<jsp:include page="admin_navbar.jsp" />
<% 
    if(session.getAttribute("user")==null)
    	response.sendRedirect("login.jsp");
	%>
<jsp:useBean id="rdao" class="model.ComplaintResponseDAO" scope="session" />
<div class="container" id="home">
	<div class="row text-center ">
		<div class="col-md-3 head-main">
			<a href="totalcomplain.jsp" style="color: #47d147" id="total"><i
				class="glyphicon glyphicon-fire" style="color: #47d147"></i></a>

			<h3>
				<a href="totalcomplain.jsp" style="color: #47d147" id="total">TOTAL
					COMPLAINTS</a>
			</h3>
			<div class="counter_text">
				<h2>
					<span class="counter"> <%
 	out.print(rdao.findTotalComplains());
 %>
					</span>
				</h2>
			</div>

		</div>
		<div class="col-md-3 head-main">
			<a href="totalActive.jsp" style="color: #47d147" id="active"> <i
				class="glyphicon glyphicon-ok-sign" style="color: #47d147"></i></a>

			<h3>
				<a href="totalActive.jsp" style="color: #47d147" id="active">ACTIVE
					COMPLAINTS</a>
			</h3>
			<div class="counter_text">
				<h2>
					<span class="counter"> <%
 	out.print(rdao.findCountOfActiveComplains());
 %>
					</span>
				</h2>
			</div>

		</div>
		<div class="col-md-3 head-main">
			<a href="totalClose.jsp" style="color: #47d147" id="close"><i
				class="glyphicon glyphicon-lock" style="color: #47d147"></i></a>

			<h3>
				<a href="totalClose.jsp" style="color: #47d147" id="close">CLOSED
					COMPLAINTS</a>
			</h3>
			<div class="counter_text">
				<h2>
					<span class="counter"> <%
 	out.print(rdao.findCountOfClosedComplains());
 %>
					</span>
				</h2>
			</div>
	</div>
	<div class="col-md-3 head-main">
	<form action="searchbydate.jsp">
			<button type="submit" style="color: #47d147" id="active" class="unstyled-button"> <i
				class="glyphicon glyphicon-search" style="color: #47d147"></i></button>
				<h3>
				<a href="totalActive.jsp" style="color: #47d147" id="active">SEARCH BY DATE</a>
			</h3>
<input type="date" class="form-control" name="from">
<input type="date" class="form-control" name="to">
</form>
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
<!--Counter UP Waypoint-->
<script src="js/waypoints.min.js"></script>
<!--Counter UP-->
<script src="js/jquery.counterup.min.js"></script>

<script>
		//for counter up
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});
	</script>