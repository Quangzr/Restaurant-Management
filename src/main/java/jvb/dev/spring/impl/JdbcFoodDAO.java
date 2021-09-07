package jvb.dev.spring.impl;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.InvalidResultSetAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.util.List;

import jvb.dev.spring.dao.FoodDAO;
import jvb.dev.spring.model.Food;
import jvb.dev.spring.util.LoggerUtil;

public class JdbcFoodDAO extends JdbcDaoSupport implements FoodDAO {

//	lấy list món ăn ở mục món lẻ
	@Override
	public List<Food> getFoodMonle() {
		String sql = " SELECT * FROM `food` WHERE idclass = 'ML' ORDER BY time DESC LIMIT 12";
		LoggerUtil.logConsole("Get food : " + sql.toString());
		try {
			List<Food> food = getJdbcTemplate().query(sql, new BeanPropertyRowMapper(Food.class));

			return food;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Get food : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Get food : co loi! ");
			return null;
		}
	}

//	lấy list món ăn ở mục món khai vị
	@Override
	public List<Food> getFoodKhaivi() {
		String sql = " SELECT * FROM `food` WHERE idclass = 'KV' ORDER BY time DESC LIMIT 12";
		LoggerUtil.logConsole("Get food : " + sql.toString());
		try {
			List<Food> food1 = getJdbcTemplate().query(sql, new BeanPropertyRowMapper(Food.class));

			return food1;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Get food : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Get food : co loi! ");
			return null;
		}
	}

// 	lấy từng món ăn 
	@Override
	public Food getMonan(int id) {
		String sql = " SELECT * FROM `food` WHERE id = " + id;
		LoggerUtil.logConsole("Get food : " + sql.toString());
		try {
			Food food = (Food) getJdbcTemplate().queryForObject(sql, new BeanPropertyRowMapper(Food.class));

			return food;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Get food : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Get food : co loi! ");
			return null;
		}
	}

}