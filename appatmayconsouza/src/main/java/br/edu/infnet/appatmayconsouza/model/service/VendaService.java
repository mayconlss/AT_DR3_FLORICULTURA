package br.edu.infnet.appatmayconsouza.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatmayconsouza.model.negocio.Venda;
import br.edu.infnet.appatmayconsouza.model.repository.IVendaRepository;

@Service
public class VendaService {
	
	@Autowired
	private IVendaRepository vendaRepository;
	
	public List<Venda> obterLista(){
		return (List<Venda>)vendaRepository.findAll();
	}
	
	public void incluir(Venda venda){
		vendaRepository.save(venda);
	}
	
	public void excluir(Integer id) {
		vendaRepository.deleteById(id);
	}
	
}
