package jvb.dev.spring.model;

import java.sql.Blob;

public class Food {
	private int id;
	private String name;
	private String price;
	private String size;
	private String description;
	private String linkimg;
	private String idclass;
	private String imgbonus1;
	private String imgbonus2;
	private String imgbonus3;
	private String imgbonus4;
	private String thanhphan;
	
	public Food() {
		super();
	}

	public Food(int id, String name, String price, String size, String description, String linkimg, String imgbonus1, String imgbonus2, String imgbonus3, String  imgbonus4, String idclass, String thanhphan) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.size = size;
		this.description = description;
		this.linkimg = linkimg;
		this.idclass = idclass;
		this.imgbonus1 = imgbonus1;
		this.imgbonus2 = imgbonus2;
		this.imgbonus3 = imgbonus3;
		this.imgbonus4 = imgbonus4;
		this.thanhphan = thanhphan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLinkimg() {
		return linkimg;
	}

	public void setLinkimg(String linkimg) {
		this.linkimg = linkimg;
	}

	public String getIdclass() {
		return idclass;
	}

	public void setIdclass(String idclass) {
		this.idclass = idclass;
	}
	
	public String getImgbonus1() {
		return imgbonus1;
	}

	public void setImgbonus1(String imgbonus1) {
		this.imgbonus1 = imgbonus1;
	}
	
	public String getImgbonus2() {
		return imgbonus2;
	}

	public void setImgbonus2(String imgbonus2) {
		this.imgbonus2 = imgbonus2;
	}
	
	public String getImgbonus3() {
		return imgbonus3;
	}

	public void setImgbonus3(String imgbonus3) {
		this.imgbonus3 = imgbonus3;
	}
	
	public String getImgbonus4() {
		return imgbonus4;
	}

	public void setImgbonus4(String imgbonus4) {
		this.imgbonus4 = imgbonus4;
	}
	
	public String getThanhphan() {
		return thanhphan;
	}

	public void setThanhphan(String thanhphan) {
		this.thanhphan = thanhphan;
	}
}