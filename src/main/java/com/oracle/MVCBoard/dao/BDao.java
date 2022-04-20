package com.oracle.MVCBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.oracle.MVCBoard.dto.BDto;

public class BDao {
	DataSource dataSource; // jsp.JDBC를 쓰려면 datasource를 써야..
	public BDao() { // 생성자에 연결.

		try {
			Context context = new InitialContext(); //생성 파일을 끌어당기는
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/OracleDB");
							//어디서 찾느냐 Server context.xml. 31행 JNDI
		} catch (Exception e) {
			System.out.println("생성자 dataSource-->" + e.getMessage());
			// e.printStackTrace();
		}

	}

	public ArrayList<BDto> list() {
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			//mvc_obard list 조회
			String query = "SELECT bId, bName, bTItle, bContent, bDate, bHit, bGroup, bStep, bIndent"
					+ "FROM mvc_board order by bGroup desc, bStep asc";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
					int bId = resultSet.getInt("bId");
					String bName = resultSet.getString("bName");
					String bTitle = resultSet.getString("bTitle");
					String bContent = resultSet.getString("bContent");
					Timestamp bDate = resultSet.getTimestamp("bDate");
					int bHit = resultSet.getInt("bHit");
					int bGroup = resultSet.getInt("bGroup");
					int bStep = resultSet.getInt("bStep");
					int bIndent = resultSet.getInt("bIndent");
					
					BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
					
					/*
					BDto dto = new BDto(); // --BDto 18. public BDto
					dto.setbName(bName);
					dto.setbContent(bContent);
					.
					.
					.
					*/
					
					
					dtos.add(dto);
					
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("list dataSource SQLException-->" + e.getMessage() );
		}
		
		
		return dtos;
	}
	
}
