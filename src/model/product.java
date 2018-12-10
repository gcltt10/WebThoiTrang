package model;

public class product {
	private int idproduct;
	private String product_name;
	private String nsx;
	private int colors;
	private String sizes;
	private String material;
	private float price;
	private int id_category;
	private int id_promotion;
	public int getIdproduct() {
		return idproduct;
	}
	public void setIdproduct(int idproduct) {
		this.idproduct = idproduct;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getNsx() {
		return nsx;
	}
	public void setNsx(String nsx) {
		this.nsx = nsx;
	}
	public int getColors() {
		return colors;
	}
	public void setColors(int colors) {
		this.colors = colors;
	}
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getId_category() {
		return id_category;
	}
	public void setId_category(int id_category) {
		this.id_category = id_category;
	}
	public int getId_promotion() {
		return id_promotion;
	}
	public void setId_promotion(int id_promotion) {
		this.id_promotion = id_promotion;
	}
	
}
