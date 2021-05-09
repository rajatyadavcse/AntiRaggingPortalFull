<jsp:include page="navbarjsp.jsp" />
<% 
    if(session.getAttribute("user")==null)
    	response.sendRedirect("login.jsp");
	%>
<div id="content" style="margin-top:100px">
	<div class="container-fluid decor_bg" id="login-panel">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4>Change Password</h4>
					</div>
					<div class="panel-body">
						<form action="ChangePassword" method="POST">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="enter new password here..."
									name="password" id="password" required>
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="enter password again" name="cnfpassword" id="cnfpassword" required>
							</div>

							<div class="form-group">
								<button type="submit" name="submit"
									class="form-control btn btn-md btn-primary">Change</button>
							</div>
						</form>
						<br />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>