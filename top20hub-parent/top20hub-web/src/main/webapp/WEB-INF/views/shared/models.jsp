<div class="modal fade" id="loginModel" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="flip">
					<div class="card">
						<div class="face front">
							<div class="panel panel-default">
								<form class="form-horizontal">
									<br>
									<h1 class="text-center">Login</h1>
									<br> <input class="form-control" placeholder="Email Id"
										type="email" required="true" /> <input class="form-control"
										placeholder="Password" type="password" required="true" />
									<p class="text-right">
										<a href="">Forgot Password</a>
									</p>
									<button class="btn btn-primary btn-block">LOG IN</button>
									<hr>
									<p style="color: #0275d8">Sign in with</p>
									<p>
										<i class="fa fa-facebook-f fa-lg"></i><i
											class="fa fa-twitter fa-lg"></i>
									</p>
									<hr>
									<p class="text-center">
										<a href="#" class="fliper-btn">Create new account?</a>
									</p>
								</form>
							</div>
						</div>
						<div class="face back">
							<div class="panel panel-default">
								<form class="form-horizontal">
									<br>
									<h1 class="text-center">Sign Up</h1>
									<br> <label>Basic Information</label> <input
										class="form-control" placeholder="Fullname" type="text"
										required="true" /> <input class="form-control"
										placeholder="Email" type="email" required="true" /> <input
										class="form-control" placeholder="Password" type="password"
										required="true" /> <input class="form-control"
										placeholder="Confirm Password" type="password" required="true" />
									<button class="btn btn-primary btn-block">SIGN UP</button>
									<p class="text-center">
										<a href="#" class="fliper-btn">Already have an account?</a>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- Login model End here -->


	<!-- Articles Intrest submission modal start here -->
	<div id="articlesInterestModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<div class="modal-header">
					<h3 id="myModalLabel">Write about your favourite
						Article/Topic!</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>

				<div class="modal-body">

					<div class="interest-content">
						<div w3-include-html=${content}/interest.html"></div>
						<br />
						<button
							class="btn btn-primary waves-effect waves-light first-button pull-right"
							style="font-size: 10px;" aria-hidden="true">Next</button>
					</div>


					<div class="content-lifestyle" style="display: none">
						<div
							w3-include-html="${content}/interest-subtopics/lifestyle.html"></div>
						<br />
						<button
							class="btn btn-primary waves-effect waves-light third-button pull-right"
							style="font-size: 10px;" aria-hidden="true">Next</button>
						<button
							class="btn btn-default waves-effect waves-light second-button pull-right"
							style="font-size: 10px;" aria-hidden="true">Previous</button>
					</div>


					<div class="article-choice" style="display: none">
						<div class="container">
							<div class="row">
								<div class="col-sm-1"></div>
								<div class="col-sm-4">
									<!--Card-->
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<div class="card wow fadeIn" data-wow-delay="0.2s">
										<!--Card image-->
										<div class="view overlay hm-white-slight">
											<button
												class="btn btn-primary waves-effect waves-light sixth-button pull-right"
												style="font-size: 15px;" aria-hidden="true">I Want
												to write more than 1 article!</button>
										</div>
									</div>
									<!--/.Card-->
								</div>

								<div class="col-sm-2">
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br> &nbsp&nbsp
									<button class="btn btn-default waves-effect waves-light"
										style="font-size: 13px;" aria-hidden="true">OR</button>
								</div>

								<div class="col-sm-4">
									<!--Card-->
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<div class="card wow fadeIn" data-wow-delay="0.2s">
										<!--Card image-->
										<div class="view overlay hm-white-slight">
											<button
												class="btn btn-primary waves-effect waves-light fifth-button"
												style="font-size: 15px;" aria-hidden="true">Let me
												try a single article first!</button>
										</div>
									</div>
									<!--/.Card-->
								</div>
								<div class="col-sm-1"></div>
							</div>
						</div>
						<button
							class="btn btn-default waves-effect waves-light bottomright fourth-button pull-right"
							style="font-size: 10px;" aria-hidden="true">Previous</button>
						<!-- <div w3-include-html="${content}/article_choice.html"></div> -->
					</div>


					<div class="single-article" style="display: none">
						<!-- <div w3-include-html="${content}/articleSubmission.html"></div> -->
						<form class="form-horizontal" action="">
							<div class="form-group">
								<label class="control-label col-sm-2" for="email">Title:</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="email"
										placeholder="Enter Title" name="email">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">Description
									:</label>
								<div class="summernote" id="summernote"></div>
							</div>
						</form>
						<br />
						<button
							class="btn btn-primary  waves-effect waves-light pull-right"
							style="font-size: 10px;" data-toggle="modal" data-dismiss="modal">Submit</button>
						<button
							class="btn btn-default waves-effect waves-light pull-right seventh-button"
							style="font-size: 10px;" aria-hidden="true">Previous</button>
					</div>


					<div class="multiple-article" style="display: none">
						<!-- <div w3-include-html="${content}/articleSubmission.html"></div> -->
						<form class="form-horizontal" action="">
							<div class="form-group">
								<label class="control-label col-sm-2" for="email">Title
									1:</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="email"
										placeholder="Enter Title" name="email">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">Description
									:</label>
								<div class="summernote" id="summernote"></div>
							</div>
						</form>

						<br>

						<form class="form-horizontal" action="">
							<div class="form-group">
								<label class="control-label col-sm-2" for="email">Title
									2:</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="email"
										placeholder="Enter Title" name="email">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">Description
									:</label>
								<div class="summernote" id="summernote"></div>
							</div>
						</form>

						<br>

						<form class="form-horizontal" action="">
							<div class="form-group">
								<label class="control-label col-sm-2" for="email">Title
									3:</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="email"
										placeholder="Enter Title" name="email">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">Description
									:</label>
								<div class="summernote" id="summernote"></div>
							</div>
						</form>

						<br />
						<button
							class="btn btn-primary  waves-effect waves-light pull-right"
							style="font-size: 10px;" data-toggle="modal" data-dismiss="modal">Submit</button>
						<button
							class="btn btn-default waves-effect waves-light pull-right eight-button"
							style="font-size: 10px;" aria-hidden="true">Previous</button>
					</div>

				</div>

			</div>
		</div>
	</div>

	<!-- Contact us modal start here -->
	<div id="contactUsModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 id="myModalLabel">We'd Love to Hear From You</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<form class="form-horizontal col-sm-12">
						<div class="form-group">
							<label>Name</label><input class="form-control required"
								placeholder="Your name" type="text">
						</div>
						<div class="form-group">
							<label>Message</label>
							<textarea class="form-control" placeholder="Your message here.."
								type="text"></textarea>
						</div>
						<div class="form-group">
							<label>E-Mail</label><input class="form-control email"
								placeholder="Please Enter your email here.." type="email">
						</div>
						<div class="form-group">
							<label>Phone</label><input class="form-control phone"
								placeholder="Please Enter your Contact No (Optional)"
								type="phone">
						</div>
						<div class="form-group pull-right">
							<button type="submit" style="font-size: 10px;"
								class="btn btn-success">Send It!</button>
						</div>
						<div class="form-group pull-right">
							<button type="submit" style="font-size: 10px;"
								class="btn btn-danger">Cancel</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Conact us modal end here -->


	<!--    aboutusModal start here  -->
	<div id="aboutusModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<div class="modal-header">
					<br>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>

				<div class="modal-body">

					<div w3-include-html="${content}/aboutus.html"></div>

				</div>
			</div>
		</div>
	</div>
