package jvb.dev.spring.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.InvalidResultSetAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import jvb.dev.spring.dao.DeliveryDAO;
import jvb.dev.spring.model.Delivery;
import jvb.dev.spring.model.Food;
import jvb.dev.spring.model.User;
import jvb.dev.spring.util.LoggerUtil;

public class JdbcDeliveryDAO extends JdbcDaoSupport implements DeliveryDAO {

	@Override
	public Delivery deliveryaddress(Delivery delivery, int nowUserID) {

		String sql = "INSERT INTO detailaddress (" + "name, " + "city, " + "district, " + "detailaddress, " + "phone, "
				+ "note, " + "iduser) " + "VALUES (" + " ?, " + "?, " + "?, " + "?, " + "?, " + "?, " + "?" + ")";

		LoggerUtil.logConsole("Delivery Address : " + sql.toString());

		try {

			int result = getJdbcTemplate().update(sql,
					new Object[] { delivery.getname(), delivery.getCity(), delivery.getDistrict(),
							delivery.getDetailaddress(), delivery.getPhone(), delivery.getNote(), nowUserID });
			System.out.println(result);

			return null;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Delivery Address : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Delivery Address : co loi! ");
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Delivery> getDeliveryaddress(int nowUserID) {
		String sql = "SELECT * FROM detailaddress WHERE iduser = " + nowUserID;

		LoggerUtil.logConsole("Select Delivery Address:" + sql.toString());

		try {
			List<Delivery> deliveryaddress = getJdbcTemplate().query(sql, new BeanPropertyRowMapper(Delivery.class));		
			return deliveryaddress;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Select Delivery Address : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Select Delivery Address : co loi! ");
			return null;
		}
	}
	
	@Override
	public Delivery getDeliveryaddressID(int id) {
		String sql = "SELECT * FROM detailaddress WHERE id = " + id;

		LoggerUtil.logConsole("Select Delivery Address:" + sql.toString());

		try {
			Delivery deliveryaddress = (Delivery) getJdbcTemplate().query(sql, new BeanPropertyRowMapper(Delivery.class));		
			return deliveryaddress;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Select Delivery Address : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Select Delivery Address : co loi! ");
			return null;
		}
	}
	
	@Override
	public Delivery updateDeliveryaddress(Delivery delivery, int nowUserID, int idaddress) {
		String sql = "UPDATE detailaddress SET name = " + " ?, " + " city = " + "?," + " district = " + "?,"
				+ " detailaddress = " + "?," + " phone = " + "?," + " note = " + "?," + "iduser = " + "?"
				+ " WHERE id = " + idaddress;

		LoggerUtil.logConsole("update Delivery address : " + sql.toString());
		try {
			int result = getJdbcTemplate().update(sql,
					new Object[] { delivery.getname(), delivery.getCity(), delivery.getDistrict(),
							delivery.getDetailaddress(), delivery.getPhone(), delivery.getNote(), nowUserID });
			System.out.println(result);
			if (result == 0) {
				return null;
			} else {
//				Delivery lastDelivery = selectLast();
//				return lastDelivery;
				return null;
			}
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("update Delivery address  : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("update Delivery address  : co loi! ");
			throw new RuntimeException(e);
		}

	}

	@Override
	public void deleteDeliveryaddress(Delivery delivery, int idaddress) {
		String sql = "DELETE FROM detailaddress WHERE id = " + idaddress;

		try {
			getJdbcTemplate().update(sql, new Object[] {});
		} catch (InvalidResultSetAccessException e) {
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			throw new RuntimeException(e);
		}

	}

}
