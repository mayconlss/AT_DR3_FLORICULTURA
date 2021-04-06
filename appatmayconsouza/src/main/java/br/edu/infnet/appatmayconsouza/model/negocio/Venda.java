package br.edu.infnet.appatmayconsouza.model.negocio;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TVenda")

public class Venda {
	
		@Id
		@GeneratedValue(strategy =GenerationType.IDENTITY )

		private int id;
		private String descricao;
		private boolean site;
		private String data;
		@OneToOne(cascade = CascadeType.DETACH)
		@JoinColumn(name="idCliente")
		private Cliente cliente;
		@OneToOne
		@JoinColumn(name="idUsuario")
		private Usuario usuario;
		
		public boolean isSite() {
			return site;
		}
		public void setSite(boolean site) {
			this.site = site;
		}
		public String getData() {
			return data;
		}
		public void setData(String data) {
			this.data = data;
		}

		public int getId() {
			return id;	
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getDescricao() {
			return descricao;
		}
		public void setDescricao(String descricao) {
			this.descricao = descricao;
		}
		public Cliente getCliente() {
			return cliente;
		}
		public void setCliente(Cliente cliente) {
			this.cliente = cliente;
		}
		public Usuario getUsuario() {
			return usuario;
		}
		public void setUsuario(Usuario usuario) {
			this.usuario = usuario;
		}

}
