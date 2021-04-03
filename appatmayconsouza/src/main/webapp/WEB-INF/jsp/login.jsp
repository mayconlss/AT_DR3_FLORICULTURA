<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>APP AT MAYCON SOUZA - FLORICULTURA</title>
<link rel="stylesheet" href="../css/style.css" />
<link
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="wrapper">
			<form name="Login_Form" class="form-signin" action="/usuario/login"
				method="post">
				<h3 class="form-signin-heading">Login - Floricultura Online</h3>
				<c:if test="${not empty mensagem}">
					<div class="alert alert-warning">
						<strong>Atenção!</strong> ${mensagem}
					</div>
				</c:if>
				<hr class="colorgraph">
				<br>
				<div class="form-group">
					<label for="nome">Informe o e-mail:</label><br> <input
						class="form-control" type="email" id="email"
						placeholder="mail@mail.com" name="email">
				</div>

				<div class="form-group">
					<label for="nome">Informe a senha:</label><br> <input
						type="password" class="form-control" id="senha"
						placeholder="******" name="senha">
				</div>

					<div class="mt-5">
						<button type="submit" class="btn btn-lg btn-primary btn-block"
							name="Submit" value="Login">LOGIN</button>
					</div>

			</form>
			<form name="Cadastro" class="form-signin" action="/usuario"
				method="get">
				<div id="botao">
					<button type="submit" class="btn btn-lg btn-primary btn-block"
						name="Submit" value="Cadastrar">CADASTRE-SE</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>