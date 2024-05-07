<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Adicionar Vehiculo</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="todo">
						<form:hidden path="id" />
						<fieldset class="form-group">
							<form:label path="placa">Placa</form:label>
							<form:input path="placa" type="text" class="form-control"
								required="required" />
							<form:errors path="placa" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="hora_entrada">Hora Entrada</form:label>
							<form:input path="hora_entrada" type="text" class="form-control"
								required="required" />
							<form:errors path="hora_entrada" cssClass="text-warning" />
						</fieldset>
						<fieldset class="form-group">
							<form:label path="hora_salida">Hora Salida</form:label>
							<form:input path="hora_salida" type="text" class="form-control"
								required="required" />
							<form:errors path="hora_salida" cssClass="text-warning" />
						</fieldset>
						<fieldset class="form-group">
							<form:label path="ubicacion">Ubicacion</form:label>
							<form:input path="ubicacion" type="text" class="form-control"
								required="required" />
							<form:errors path="ubicacion" cssClass="text-warning" />
						</fieldset>
						<fieldset class="form-group">
							<form:label path="tipo_vehiculo">tipo</form:label>
							<form:input path="tipo_vehiculo" type="text" class="form-control"
								required="required" />
							<form:errors path="tipo_vehiculo" cssClass="text-warning" />
						</fieldset>

						<button type="submit" class="btn btn-success">Guardar</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp"%>