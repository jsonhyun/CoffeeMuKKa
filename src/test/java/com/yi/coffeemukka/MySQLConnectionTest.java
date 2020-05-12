package com.yi.coffeemukka;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/coffeemukka";
	private static final String USER = "root";
	private static final String PASSWORD = "rootroot";
	
	@Test
	public void testConnection() throws ClassNotFoundException {
		Class.forName(DRIVER);
		try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD)){
			System.out.println("con : " + con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
