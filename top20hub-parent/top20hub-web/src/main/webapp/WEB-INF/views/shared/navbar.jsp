<nav
	class="navbar navbar-toggleable-md navbar-dark fixed-top scrolling-navbar">
	<div class="container">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarNav1"
			aria-controls="navbarNav1" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="../index.html"> <img
			src="${img}/logo/logo.png" width="180" height="40" />
		</a>
		<div class="collapse navbar-collapse" id="navbarNav1">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link">Home <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					href="#articlesInterestModal">Write Your Article</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					href="#contactUsModal">Contact us</a> <!-- <h1 class="text-center"><a href="#myModal" role="button" class="btn btn-primary btn-lg" data-toggle="modal">Contact Us</a></h1> -->
				</li>
				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					href="#aboutusModal">About us</a></li>
				<li class="nav-item"><a class="nav-link" target="_blank"
					href="${context}/topAuthers.html">Top 20 Authers</a></li>
			</ul>
			<ul>
				<li class="nav-item pull-right">
					<!-- <button type="button"
							class="btn btn-primary btn-block waves-effect waves-light"
							data-toggle="modal" data-target="#loginModel">Log In
							/Sign Up</button> --> <a class="nav-link"
					href="${context}/login.html">Login</a>
				</li>
				<li class="nav-item pull-right"><a class="nav-link"
					href='<c:url value="/j_spring_security_logout" />'>Logout</a></li>
				<li class="nav-item pull-right"><a target="_blank"
					class="nav-link" href="${content}/profile.html">My Profile</a></li>
			</ul>
		</div>
	</div>
</nav>
