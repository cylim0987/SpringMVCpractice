package com.oracle.MVCBoard.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BDao {
	DataSource dataSource; //jsp.JDBC를 쓰려면 datasource를 써야..
	
	public BDao() {		//생성자에 연결.
		
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception e) {
			System.out.println("생성자 dataSource-->" + e.getMessage());
			//e.printStackTrace();
		}
		
	}
	
	
	
}
