<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>

<div class="container">
	 
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-todo">Adiciobar vehiculo</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>Lista de Entradas y Salidas</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="15%">Placa</th>
						<th width="15%">Hora Entrada</th>
						<th width="15%">Hora Salida</th>
						<th width="15%">Ubicacion</th>
						<th width="15%">Tipo</th>
						<th width="25%"></th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.nombre}</td>
							<td>< fmt:formatDate value="${todo.hora_entrada}"
									pattern="HH:mm:ss" /></td>
							<td>< fmt:formatDate value="${todo.hora_salida}"
									pattern="HH:mm:ss" /></td>
							<td>
    							<a type="button" class="btn btn-success" href="/update-todo?id=${todo.id}">Actualizar</a>
    							<a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.id}">Eliminar</a>
							</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jsp"%>