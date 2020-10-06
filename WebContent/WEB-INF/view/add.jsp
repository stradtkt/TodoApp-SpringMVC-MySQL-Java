<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</head>
	<body>
		<header>
			<div class="jumbotron">
				<div class="container">
					<h1 class="text-center">Todo Application</h1>
				</div>
			</div>
		</header>
		<main>
			<div class="container">
				<div class="row">
					<div class="col-4">
						<h1 class="text-center">Menu</h1>
						<p><a class="btn btn-primary btn-block btn-lg" href="${pageContext.request.contextPath}/home"><i class="far fa-eye"></i> View Todos</a></p>
						<p><a class="btn btn-success btn-block btn-lg" href="${pageContext.request.contextPath}/add"><i class="fas fa-plus"></i> Add Todo</a></p>
					</div>
					<div class="col-8">
						<h1 class="text-center">Add A Todo</h1>
						<form:form action="saveTodo" modelAttribute="todo" method="POST">
							<form:hidden path="id"/>
							<div class="form-group">
								<form:input path="title" class="form-control" placeholder="Enter Title"/>
							</div>
							<div class="form-group">
								<form:textarea path="description" class="form-control" placeholder="Enter Description"/>
							</div>
							<div class="form-group">
								<form:input type="datetime" path="email" class="form-control" placeholder="Enter Date"/>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</main>
		<footer class="text-center">@Copyright Kevin Stradtman, 2020.</footer>
	</body>
</html>