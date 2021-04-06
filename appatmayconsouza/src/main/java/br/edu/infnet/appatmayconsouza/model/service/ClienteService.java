package br.edu.infnet.appatmayconsouza.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatmayconsouza.model.negocio.Cliente;
import br.edu.infnet.appatmayconsouza.model.negocio.Usuario;
import br.edu.infnet.appatmayconsouza.model.repository.IClienteRepository;

@Service
public class ClienteService {
		
		@Autowired
		private IClienteRepository clienteRepository;
		
		public List<Cliente> obterLista(Usuario usuario){
			
			return (List<Cliente>)clienteRepository.listaUsuario(usuario.getId(), Sort.by(Sort.Direction.ASC, "nome"));
		}
		
		public void incluir(Cliente cliente){
			clienteRepository.save(cliente);
		}
		
		public void excluir(Integer id) {
			clienteRepository.deleteById(id);
		}
}
