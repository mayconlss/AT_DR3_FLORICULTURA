package br.edu.infnet.appatmayconsouza.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appatmayconsouza.model.negocio.Cliente;
import br.edu.infnet.appatmayconsouza.model.negocio.Usuario;
import br.edu.infnet.appatmayconsouza.model.service.ClienteService;
import br.edu.infnet.appatmayconsouza.model.service.UsuarioService;

@Controller
public class ClienteController {
	@Autowired
	ClienteService clienteService;
	@Autowired
	UsuarioService usuarioService;	

	@GetMapping(value = "/cliente")
	public String showDetalhe(Model model) {

		model.addAttribute("lista", clienteService.obterLista());
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		clienteService.obterLista();

		return "cliente/detalhe";
	}

	@PostMapping(value = "cliente/incluir")
	public String incluir(Cliente cliente) {

		clienteService.incluir(cliente);

		return "redirect:/cliente";
	}

	@GetMapping(value = "/cliente/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id, @SessionAttribute("user") Usuario usuario) {
		try {
			clienteService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("msg", "Cliente com vínculo de venda");
			return showDetalhe(model);
		}
		return "redirect:/cliente";
	}
}
