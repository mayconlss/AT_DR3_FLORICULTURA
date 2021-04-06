package br.edu.infnet.appatmayconsouza.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatmayconsouza.model.negocio.Cliente;

@Repository


public interface IClienteRepository extends CrudRepository<Cliente, Integer> {
	@Query("from Cliente c where c.usuario.id=:id")
	List<Cliente> listaUsuario(Integer id, Sort sort);
}
