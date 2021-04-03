package br.edu.infnet.appatmayconsouza.model.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

import org.springframework.data.domain.Sort;

import br.edu.infnet.appatmayconsouza.model.negocio.Venda;

@Repository
public interface IVendaRepository extends CrudRepository<Venda, Integer>{
	@Query("from Venda v where v.usuario.id=:id")
	List<Venda> obterLista(Integer id, Sort by);
}
