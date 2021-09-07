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

import jvb.dev.spring.dao.ContactDAO;
import jvb.dev.spring.model.Contact;
import jvb.dev.spring.util.LoggerUtil;

public class JdbcContactDAO extends JdbcDaoSupport implements ContactDAO {
	public Contact contactuser(Contact contact) {

		String sql = "INSERT INTO contact (" + "name, " + "email, " + "phone, " + "address, " + "title, " + "content) "
				+ "VALUES (" + "?, " + "?, " + "?, " + "?, " + "?, " + "?)";
		LoggerUtil.logConsole("Contact : " + sql.toString());
		try {
			int result = getJdbcTemplate().update(sql, new Object[] { contact.getname(), contact.getEmail(),
					contact.getPhone(), contact.getAddress(), contact.getTitle(), contact.getContent() });
			System.out.println(result);

			return null;
		} catch (InvalidResultSetAccessException e) {
			LoggerUtil.logConsole("Contact : co loi! ");
			throw new RuntimeException(e);
		} catch (DataAccessException e) {
			LoggerUtil.logConsole("Contact : co loi! ");
			throw new RuntimeException(e);
		}
	}
}
