package com.github.diegonobre.javaee.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the exame database table.
 * 
 */
@Entity
@NamedQuery(name="Exame.findAll", query="SELECT e FROM Exame e")
public class Exame implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="sq_exame", updatable=false)
	private Integer id;

	@Column(name="ds_nome")
	private String nome;

	@Column(name="sq_nivel")
	private Integer sqNivel;

	//bi-directional many-to-one association to ExameAssunto
	@OneToMany(mappedBy="exame")
	private List<ExameAssunto> exameAssuntos;

	public Exame() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getSqNivel() {
		return this.sqNivel;
	}

	public void setSqNivel(Integer sqNivel) {
		this.sqNivel = sqNivel;
	}

	public List<ExameAssunto> getExameAssuntos() {
		return this.exameAssuntos;
	}

	public void setExameAssuntos(List<ExameAssunto> exameAssuntos) {
		this.exameAssuntos = exameAssuntos;
	}

	public ExameAssunto addExameAssunto(ExameAssunto exameAssunto) {
		getExameAssuntos().add(exameAssunto);
		exameAssunto.setExame(this);

		return exameAssunto;
	}

	public ExameAssunto removeExameAssunto(ExameAssunto exameAssunto) {
		getExameAssuntos().remove(exameAssunto);
		exameAssunto.setExame(null);

		return exameAssunto;
	}

}