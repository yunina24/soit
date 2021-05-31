package com.soit.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@project.ci5bnvcbdvrf.ap-northeast-2.rds.amazonaws.com:1521:orcl";
	private String user = "yedam";
	private String passwd = "yedam1234";
	public Connection conn;
	
	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, passwd);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
