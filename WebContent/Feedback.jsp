
<% 
    if(session.getAttribute("user")==null)
    	response.sendRedirect("login.jsp");
	%>
<jsp:include page="navbarjsp.jsp" />
	<div class="container">
		<h1 class="well">FEEDBACK</h1>
		<div class="col-sm-12 well">
			<div class="row">
				<form action="FeedbackServlet" method="post">
					<div class="col-sm-12">
						<div class="form-group">
							<label>Name</label>
							<input type="text" id="name" name="name" placeholder="Enter Name Here.." class="form-control"></textarea>
						</div>
						
						<div class = "row">
						<div class="col-sm-6 form-group">
							<label>Phone Number</label> <input type="Number" id="phoneNo" name="phoneNo"
								placeholder="Enter Phone Number Here.." class="form-control">
						</div>
						<div class="col-sm-6 form-group">
							<label>Email Address</label> <input type="email" id="email" name="email"
								placeholder="Enter Email Address Here.." class="form-control">
						</div>
						</div>
						
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Address</label> <input type="text" id="address" name="address"
									placeholder="Enter Address Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>State</label> <input type="text" id="state" name="state"
									placeholder="Enter State Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>Pin code</label> <input type="number" id="pincode" name="pincode"
									placeholder="Enter Pin Code Here.." class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label>Feedback</label>
							<textarea placeholder="Enter Feedback Here.." rows="3" id="feedback" name="feedback"
								class="form-control"></textarea>
						</div>
						<button type="submit" class="btn btn-lg btn-info">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- </body>
</html> -->