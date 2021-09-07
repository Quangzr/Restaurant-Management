package jvb.dev.spring.dao;

import java.sql.Blob;
import java.util.List;

import jvb.dev.spring.model.Food;

public interface FoodDAO {

	List<Food> getFoodMonle();

	List<Food> getFoodKhaivi();

	Food getMonan(int id);

}