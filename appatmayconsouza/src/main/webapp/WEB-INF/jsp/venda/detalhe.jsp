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
				<h2 class="form-signin-heading">Cadastro de Vendas</h2>
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

			<form class="form-signin" action="/venda/incluir" method="post">


				<div class="form-group">
					<label>INFORME O CLIENTE: </label> <select class="form-control"
						name="cliente.id">
						<c:forEach var="c" items="${clientes}">
							<option value="${c.id}">${c.nome}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label>INFORME A VENDA: </label> <input type="text" name="descricao"
						class="form-control">
				</div>

				<div class="form-group">
					<label>SERVIÇO REALIZADO PELO SITE  </label> <input type="checkbox"
						class="form-check-input" id="site" name="site">
				</div>

				<div class="form-group">
					<label>DATA DA VENDA:  </label> <input type="date" name="data"
						class="form-control">
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

					<h1 class="form-signin-heading">LISTA DE VENDAS</h1>
					<thead>
						<tr>
							<th>Cliente</th>
							<th>Vendas</th>
							<th>Site</th>
							<th>Data</th>
							<th class="text-center">Ação</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="v" items="${lista}">
							<tr>
								<td>${v.cliente.nome}</td>
								<td>${v.descricao}</td>
								<td><c:if test="${v.site == true}">
                                 Venda pelo site.
                                 </c:if> <c:if test="${v.site == false}">
                                 Venda pela loja.
                                  </c:if></td>
								<td>${v.data}</td>

								<td class="text-center"><a class="btn btn-danger btn-xs"
									href="/venda/${v.id}/excluir"">excluir</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>

			<c:if test="${empty lista}">
				<p>Não existem vendas cadastradas no sistema.</p>
			</c:if>

		</div>
</body>
</html>