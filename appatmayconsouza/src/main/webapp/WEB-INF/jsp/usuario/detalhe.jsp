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
			<br>
			<hr class="colorgraph">
			<br>
			<div class="mt-5">
				<h2 class="form-signin-heading">Cadastro de Usuários</h2>
			</div>
			<br>
			<hr class="colorgraph">
			<br>

			<div id="botao">
				<div class="mt-5">
					<form class="form-signin" action="/home">
						<button href="/home" type="submit" class="btn btn-link">Home</button>
					</form>
				</div>
			</div>

			<form class="form-signin" action="usuario/incluir" method="post">


				<div class="form-group">
					<label>Nome:</label> <input type="text" class="form-control"
						id="nome" placeholder="Informar o nome completo" name="nome">
				</div>

				<div class="form-group">
					<label>Email:</label> <input type="text" class="form-control"
						id="email" placeholder="Informar email" name="email">
				</div>

				<div class="form-group">
					<label>Senha:</label> <input type="password" class="form-control"
						id="senha" placeholder="Informar senha" name="senha">
				</div>

				<div class="form-group">
					<label>Git:</label> <input type="text" class="form-control"
						id="git" placeholder="Informar link do git" name="git">
				</div>

				<div id="botao">
					<div class="mt-5">
						<br> <br>
						<button type="submit">Salvar</button>
						<br>
					</div>
				</div>
			</form>
		</div>
		
		<c:if test="${not empty lista}">
						<table class="table table-striped custab form-signin-heading">
					<h1 class="form-signin-heading">LISTA DE CLIENTES</h1>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Email</th>
						<th>Git</th>
													<th class="text-center">Ação</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${lista}">
						<tr>
							<td>${u.id}</td>
							<td>${u.nome}</td>
							<td>${u.git}</td>							
								<td class="text-center"><a class="btn btn-danger btn-xs"
									href="/usuario/${u.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty lista}">
			<p>Não existem clientes cadastrados no sistema.</p>
		</c:if>

		<c:if test="${not empty msg}">
			<div class="alert alert-danger">
				<strong>Impossível excluir. </strong> ${msg}
			</div>
		</c:if>
		
		
		
</body>
</html>