package jvb.dev.spring.dao;

import java.sql.Blob;
import java.util.List;

import jvb.dev.spring.model.User;

public interface UserDAO {

	User loginUser(String username, String password);

	User registerUser(User user);

	User configUser(User user, User nowUser);

//	void deleteAcc(User user);

}
