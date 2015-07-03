package com.github.diegonobre.javaee.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the exame_assunto database table.
 * 
 */
@Entity
@Table(name="exame_assunto")
@NamedQuery(name="ExameAssunto.findAll", query="SELECT e FROM ExameAssunto e")
public class ExameAssunto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="sq_exame_assunto", updatable=false)
	private Integer id;

	//bi-directional many-to-one association to Exame
	@ManyToOne
	@JoinColumn(name="sq_exame")
	private Exame exame;

	//bi-directional many-to-one association to Assunto
	@ManyToOne
	@JoinColumn(name="sq_assunto")
	private Assunto assunto;

	public ExameAssunto() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Exame getExame() {
		return this.exame;
	}

	public void setExame(Exame exame) {
		this.exame = exame;
	}

	public Assunto getAssunto() {
		return this.assunto;
	}

	public void setAssunto(Assunto assunto) {
		this.assunto = assunto;
	}

}