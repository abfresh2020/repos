package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import db.DbUty;

public class Sample02 {
	public static void main(String[] args) {

		try {
			String url = DbUty.getDbUrl();
			//
			String sql_select = "SELECT * FROM M_空港";
			//
			Connection conn = DriverManager.getConnection(url);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql_select);
			while (rs.next()) {
				System.out.println(
					String.format(
						"%s %s %s",
						rs.getString(1),
						rs.getString(2),
						rs.getString(3)
					)
				);
			}
		}
		catch (SQLException e) {
			System.out.println("err: " + e.getMessage());
		}

	}

}
