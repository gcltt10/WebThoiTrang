package dao;

import java.util.ArrayList;

import model.MonHang;

public class GIOHANG_MODEL {
	
	private ArrayList<MonHang> giohang;
	
	public GIOHANG_MODEL()
	{
		giohang=new ArrayList<>();
	}
	
	public void themMonhang(MonHang monhang)
	{
		MonHang MonHang=timMonhang(monhang.getMasp());
		if(MonHang!=null)
		{
			MonHang.setSoluong(MonHang.getSoluong()+monhang.getSoluong());
		}
		else
		{
			giohang.add(monhang);
		}
		
	}
	
	public void xoaMonhang(int masp)
	{
		MonHang monhang=timMonhang(masp);
		if(monhang!=null)
		{
			giohang.remove(monhang);
		}
	}
	
	public float Tongtien()
	{
		int Tongtien=0;
		for(int i=0;i<giohang.size();i++)
		{
			Tongtien+=giohang.get(i).thanhTien();
		}
		return Tongtien;
	}
	
	public int SoluongMonhang()
	{
		return giohang.size();
	}
	
	public ArrayList<MonHang> getGiohang()
	{
		return giohang;
	}
	
	public MonHang timMonhang(int masp)
	{
		for(int i=0;i<giohang.size();i++)
		{
			if(giohang.get(i).getMasp() ==  masp)
				return giohang.get(i);
		}
		return null;
	}
}
