<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<h2 class="form-signin-heading">Bem vindo, Sol!</h2>
			<br>
			<hr class="colorgraph">
			<br>

			<form name="Login_Form" class="form-signin">
				<div class="form-group">
					<h3 class="form-signin-heading">${user.nome}</h3>
				</div>
				<div class="form-group">
					<h3 class="form-signin-heading">${user.email}</h3>
				</div>
				<br>
			</form>
			
				<div class="form-signin-heading">
					<p>
						<a href="${user.git}">Clique aqui para acessar o Gitub!</a><i class="bi bi-github"></i>
					</p>
				</div>


			<form action="/cliente" method="get">
				<div id="botao">
					<div class="mt-5">
						<button type="submit" class="botaoEnviar">Cadastrar
							Cliente</button>
					</div>
				</div>
			</form>

			<form action="/venda" method="get">
				<div class="mt-5">
					<div id="botao">
						<button type="submit" class="botaoEnviar">Cadastrar
							Vendas</button>
					</div>
				</div>
			</form>
			<hr class="colorgraph">
			<br>
		</div>
	</div>
</body>
</html>