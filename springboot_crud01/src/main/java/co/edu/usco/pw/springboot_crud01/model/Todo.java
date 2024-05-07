package co.edu.usco.pw.springboot_crud01.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "todos")
public class Todo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String userName;

	@Size(max = 6, message = "Enter max 6 Characters...")
	private String placa;

	private Date hora_entrada;
	
	private Date hora_salida;
	
	private String ubicacion;
	
	private String tipo_vehiculo;
	
	public Todo() {
		super();
	}

	public Todo(String user, String placa, Date hora_entrada, Date hora_salida, String ubicacion, String tipo_vehiculo, boolean isDone) {
		super();
		this.userName = user;
		this.placa = placa;
		this.hora_entrada = hora_entrada;
		this.hora_salida = hora_salida;
		this.ubicacion = ubicacion;
		this.tipo_vehiculo = tipo_vehiculo;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public Date getHora_entrada() {
		return hora_entrada;
	}

	public void setHora_entrada(Date hora_entrada) {
		this.hora_entrada = hora_entrada;
	}

	public Date getHora_salida() {
		return hora_salida;
	}

	public void setHora_salida(Date hora_salida) {
		this.hora_salida = hora_salida;
	}

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public String getTipo_vehiculo() {
		return tipo_vehiculo;
	}

	public void setTipo_vehiculo(String tipo_vehiculo) {
		this.tipo_vehiculo = tipo_vehiculo;
	}

}