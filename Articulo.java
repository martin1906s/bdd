package com.krakedev.moduloii.evaluacionfinal.entidades;

import java.math.BigDecimal;

public class Articulo {
	private String id;
	private String nombre;
	private BigDecimal precioVenta;
	private BigDecimal precioCompra;
	private Grupo idCategoria;
	
	public Articulo(String id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}
	public Articulo(String id, String nombre, BigDecimal precioVenta, BigDecimal precioCompra, Grupo idCategoria) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.precioVenta = precioVenta;
		this.precioCompra = precioCompra;
		this.idCategoria = idCategoria;
	}
	public Articulo() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public BigDecimal getPrecioVenta() {
		return precioVenta;
	}
	public void setPrecioVenta(BigDecimal precioVenta) {
		this.precioVenta = precioVenta;
	}
	public BigDecimal getPrecioCompra() {
		return precioCompra;
	}
	public void setPrecioCompra(BigDecimal precioCompra) {
		this.precioCompra = precioCompra;
	}
	public Grupo getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(Grupo idCategoria) {
		this.idCategoria = idCategoria;
	}
	@Override
	public String toString() {
		return "Articulo [id=" + id + ", nombre=" + nombre + ", precioVenta=" + precioVenta + ", precioCompra="
				+ precioCompra + ", idCategoria=" + idCategoria + "]";
	}
}
