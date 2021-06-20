<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>小日子LOG IN</title>
	<link rel="stylesheet" href="../assets/css/login.css">
	<style>
		.form-structor {
			background-color: rgba(34, 34, 34, 0.678);
			border-radius: 15px;
			height: 550px;
			width: 350px;
			position: relative;
			overflow: hidden;
		}

		.form-structor::after {
			content: "";
			opacity: 0.8;
			position: absolute;
			top: 0;
			right: 0;
			bottom: 0;
			left: 0;
			background-image: url(../assets/photo/00.gif);
			background-repeat: no-repeat;
			background-position: left bottom;
			background-size: 500px;


		}
	</style>
</head>

<body>

	<div class="form-structor">
		<div class="signup">
			<h2 class="form-title" id="signup"><span>or</span>Sign up</h2>
            <FORM method="POST" action="signin.jsp">

			<div class="form-holder">
				<input type="text" class="input" placeholder="Name" name="Name" />
				<input type="email" class="input" placeholder="Email" name="Email"/>
				<input type="password" class="input" placeholder="Password" name="Password"/>
			</div>
			<button class="submit-btn">Sign up</button>
            </FORM>
		</div>
		<div class="login slide-up">
			<div class="center">
				<h2 class="form-title" id="login"><span>or</span>Log in</h2>
                <FORM method="POST" action="check.jsp">

				<div class="form-holder">
					<input type="email" class="input" placeholder="Email" name="Email"/>
					<input type="password" class="input" placeholder="Password" name="Password"/>
				</div>
				<button class="submit-btn">Log in</button>
                </FORM>
			</div>
		</div>
	</div>

	<script src="../assets/js/login.js"></script>

</body>

</html>