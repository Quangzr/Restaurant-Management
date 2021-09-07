package jvb.dev.spring.dao;

import java.sql.Blob;
import java.util.List;

import jvb.dev.spring.model.Contact;
import jvb.dev.spring.model.User;

public interface ContactDAO {
	Contact contactuser(Contact contact);
}