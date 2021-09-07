package jvb.dev.spring.dao;

import java.sql.Blob;
import java.util.List;

import jvb.dev.spring.model.Delivery;
import jvb.dev.spring.model.User;

public interface DeliveryDAO {
//	thêm địa chỉ giao hàng
	Delivery deliveryaddress(Delivery delivery, int nowUserID);

//	lấy địa chỉ giao hàng từ database
	List<Delivery> getDeliveryaddress(int nowUserID);

//	update địa chỉ giao hàng 
	Delivery updateDeliveryaddress(Delivery delivery, int nowUserID, int idaddress);

// 	xóa địa chỉ giao hàng
	void deleteDeliveryaddress(Delivery delivery, int idaddress);

//	lấy id của từng địa chỉ
	Delivery getDeliveryaddressID(int id);
}
