package co.edu.usco.pw.springboot_crud01.service;

import java.util.Date;

import java.util.List;
import java.util.Optional;

import co.edu.usco.pw.springboot_crud01.model.Todo;

public interface ITodoService {

	List<Todo> getTodosByUser(String user);

	Optional<Todo> getTodoById(long id);

	void updateTodo(Todo todo);

	void addTodo(String name, String placa, Date hora_entrada, Date hora_salida, String ubicacion, String tipo_vehiculo, boolean isDone);

	void deleteTodo(long id);
	
	void saveTodo(Todo todo);

}