package com.yi.coffeemukka;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"}) 
public class DataSourceTest {
	@Autowired //Spring container 안에 DataSource type을 가진 singleton을 자동 주입시킴
	private DataSource ds;
	
	@Test
	public void testDs() {
		System.out.println("ds : " + ds);
	}
	
	@Test
	public void testConnection() {
		try (Connection con = ds.getConnection()){
			System.out.println("con : " + con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
