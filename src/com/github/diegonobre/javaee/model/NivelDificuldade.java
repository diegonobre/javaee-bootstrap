package com.github.diegonobre.javaee.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the nivel_dificuldade database table.
 * 
 */
@Entity
@Table(name="nivel_dificuldade")
@NamedQuery(name="NivelDificuldade.findAll", query="SELECT n FROM NivelDificuldade n")
public class NivelDificuldade implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="sq_nivel")
	private Integer id;

	@Column(name="ds_nivel")
	private String nivel;

	public NivelDificuldade() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNivel() {
		return this.nivel;
	}

	public void setNivel(String nivel) {
		this.nivel = nivel;
	}

}