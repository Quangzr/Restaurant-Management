package jvb.dev.spring.impl;

import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.InvalidResultSetAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import jvb.dev.spring.dao.UserDAO;
import jvb.dev.spring.model.User;
import jvb.dev.spring.util.LoggerUtil;

public class JdbcUserDAO extends JdbcDaoSupport implements UserDAO {

	public User registerUser(User user) {

		String sql = "INSERT INTO users (" + "name, " + "email, " + "password, " + "phone) " + "VALUES (" + "?, "
				+ "?, " + "?, " + "?)";
		LoggerUtil.logConsole("Register : " + sql.toString());
		try {
			int result = getJdbcTemplate().update(sql,
					new Object[] { user.getname(), user.getEmail(), user.getPassword(), user.getPhone(), });
			System.out.println(result);
			if (result == 0) {
				return null;
			} else {
				User lastUser = selectLast();
				return lastUser;
			}
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Register : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Register : co loi! ");
			throw new RuntimeException(e);
		}

	}

	public User loginUser(String username, String password) {

		String sql = "SELECT * FROM users WHERE name = ? AND password = ? LIMIT 1";
		LoggerUtil.logConsole("Login : " + sql.toString());

		try {
			User loginUser = (User) getJdbcTemplate().queryForObject(sql, new Object[] { username, password },
					new BeanPropertyRowMapper<User>(User.class));

			LoggerUtil.logConsole("Login : " + loginUser.getname() + loginUser.getPassword());
			if (loginUser.getname().isEmpty() && loginUser.getPassword().isEmpty()) {
				return new User();
			}
			return loginUser;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("loginUser : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("loginUser : co loi! ");
			return null;
		}
	}

	private User selectLast() {

		String sql = "SELECT * FROM users ORDER BY id DESC LIMIT 1";

		try {
			User user = (User) getJdbcTemplate().queryForObject(sql, new BeanPropertyRowMapper(User.class));
			return user;
		} catch (InvalidResultSetAccessException e) {
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public User configUser(User user, User nowUser) {
		
		String sql = "UPDATE users SET name = " + " ?, "  + " email = " + "?," + " phone = " + "?," +  " address = " + "? WHERE id = " + nowUser.getId();
		
		LoggerUtil.logConsole("Config : " + sql.toString());
		try {
			int result = getJdbcTemplate().update(sql, new Object[] {
					user.getname(),
					user.getEmail(),
					user.getPhone(),
					user.getAddress(),
				});
				System.out.println(result);
				if (result == 0) {
					return null;
				} else {
					User lastUser = selectLast();
					return lastUser;
				}
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Config : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Config : co loi! ");
			throw new RuntimeException(e);
		}
	}

//	@Override
//	public void deleteAcc(User user) {
//		String sql = "DELETE FROM users WHERE id = " + user.getId();
//
//		try {
//			getJdbcTemplate().update(sql);
//
//		} catch (InvalidResultSetAccessException e) {
//			throw new RuntimeException(e);
//		} catch (DataAccessException e) {
//			throw new RuntimeException(e);
//		}
//	}

}
