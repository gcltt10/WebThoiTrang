package model;

public class MonHang {
	private int masp;
	private String tensp;
	private float giasp;
	private int soluong;
	private String img;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getMasp() {
		return masp;
	}
	public void setMasp(int masp) {
		this.masp = masp;
	}
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}
	public float getGiasp() {
		return giasp;
	}
	public void setGiasp(float giasp) {
		this.giasp = giasp;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	
	public float thanhTien()
	{
		return giasp*soluong;
	}
}
