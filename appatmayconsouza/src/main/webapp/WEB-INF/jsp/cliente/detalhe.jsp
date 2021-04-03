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
				<h2 class="form-signin-heading">Lista de Clientes</h2>
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

		</form>
		<form class="form-signin" action="/cliente/incluir" method="post">

	  	 <div class="form-group">
	      <label>Informe o Usuario: </label>
	      <select class="form-control" name="usuario.id">
	      	<c:forEach var="u" items="${usuarios}">
	      	<option value="${u.id}">${u.nome}</option>
	      	</c:forEach>
	      </select>
	    </div>

			<div class="form-group">
				<label>NOME DO CLIENTE:  </label> <input type="text"
					class="form-control" id="nome"
					placeholder="Informar o nome do cliente" name="nome"
					value="MAYCON SOUZA">
			</div>

			<div class="form-group">
				<label>IDADE DO CLIENTE</label> <input type="number"
					class="form-control" id="idade"
					placeholder="Informar o idade do cliente" name="idade"
					value="MAYCON SOUZA">
			</div>

			<div class="form-group">
				<label>CLIENTE É ALÉRGICO?  </label> <input type="checkbox"
					class="form-check-input" id="alergico" name="alergico">
			</div>


				<div id="botao">
					<div class="mt-5">
						<br> <br>
						<button type="submit">Salvar</button>
						<br>
					</div>
				</div>
		</form>

		<c:if test="${not empty lista}">
						<table class="table table-striped custab form-signin-heading">
					<h1 class="form-signin-heading">LISTA DE CLIENTES</h1>
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Idade</th>
						<th>Alérgico</th>
													<th class="text-center">Ação</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="c" items="${lista}">
						<tr>
							<td>${c.id}</td>
							<td>${c.nome}</td>
							<td>${c.idade}</td>
							<td><c:if test="${c.alergico == true}">
                                 SIM!
                                 </c:if> <c:if test="${c.alergico == false}">
                                 NÃO!
                                  </c:if></td>

								<td class="text-center"><a class="btn btn-danger btn-xs"
									href="/venda/${v.id}/excluir"">excluir</a></td>
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

	</div>

</body>
</html>