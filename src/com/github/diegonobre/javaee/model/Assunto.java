package com.github.diegonobre.javaee.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the assunto database table.
 * 
 */
@Entity
@NamedQuery(name="Assunto.findAll", query="SELECT a FROM Assunto a")
public class Assunto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="sq_assunto", updatable=false)
	private Integer id;

	@Column(name="ds_descricao")
	private String descricao;

	@Column(name="ds_nome")
	private String nome;

	//bi-directional many-to-one association to ExameAssunto
	@OneToMany(mappedBy="assunto")
	private List<ExameAssunto> exameAssuntos;

	public Assunto() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<ExameAssunto> getExameAssuntos() {
		return this.exameAssuntos;
	}

	public void setExameAssuntos(List<ExameAssunto> exameAssuntos) {
		this.exameAssuntos = exameAssuntos;
	}

	public ExameAssunto addExameAssunto(ExameAssunto exameAssunto) {
		getExameAssuntos().add(exameAssunto);
		exameAssunto.setAssunto(this);

		return exameAssunto;
	}

	public ExameAssunto removeExameAssunto(ExameAssunto exameAssunto) {
		getExameAssuntos().remove(exameAssunto);
		exameAssunto.setAssunto(null);

		return exameAssunto;
	}

}