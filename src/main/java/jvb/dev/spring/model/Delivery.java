package jvb.dev.spring.model;

import java.sql.Blob;

public class Delivery {
	private int id;
	private String name;
	private String city;
	private String district;
	private String detailaddress;
	private String phone;
	private String note;
	private int iduser;
	
	public Delivery() {
		super();
	}

	public Delivery(int id, String name, String city, String detailaddress, String phone, String district,
			String note, int iduser) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.phone = phone;
		this.detailaddress = detailaddress;
		this.district = district;
		this.note = note;
		this.iduser = iduser;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDetailaddress() {
		return detailaddress;
	}

	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}
	
}