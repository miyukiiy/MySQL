package br.org.generation.lojagames.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@Entity 
@Table(name = "tb_produto") 
public class Produto {


	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private long id;
	
	@NotBlank
	@NotNull(message = "O nome do produto é obrigatorio!")
	@Size(min = 1, max = 100, message = "O nome deve ter no mínimo 1 e no máximo 100 carcteres")
	private String nome;
	
	@NotBlank
	@NotNull(message = "O nome da marca é obrigatorio!")
	@Size(min = 1, max = 100, message = "O nome da marca deve ter no mínimo 1 e no máximo 100 carcteres")
	private String marca;
	
	@NotBlank
	@NotNull(message = "A descrição do jogo é obrigatorio!")
	@Size(min = 1, max = 1000, message = "A descrição do deve ter no mínimo 1 e no máximo 1000 carcteres")
	private String descricao;
	
	@NotNull(message = "Preço é obrigatório!")
	@Positive(message = "O preço deve ser maior do que zero!")
	private BigDecimal preco;

	@Temporal(TemporalType.TIMESTAMP)
	private Date data = new java.sql.Date(System.currentTimeMillis());
	
	@ManyToOne
	@JsonIgnoreProperties("produto")
	private Categoria categoria;

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}


	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}


	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

}


