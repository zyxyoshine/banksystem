package com.cjg.bank.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private static String url = "jdbc:microsoft:sqlserver://localhost:1433;databaseName=banksystem";

	public static Connection getDBC() throws SQLException, Exception {
		Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
		// �û���Ϊsa������Ϊ��
		Connection conn = DriverManager.getConnection(url, "test", "12345");
		return conn;
	}
}
