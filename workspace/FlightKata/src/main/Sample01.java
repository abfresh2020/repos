package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Sample01 {
	public static void main(String[] args) {

		try {
			String prefiex = "jdbc:ucanaccess://";
			String fname = "flight.accdb";
			// このプログラムが起動された場所（フォルダー）を取得する。
			String dir = System.getProperty("user.dir");
			//
			String url = prefiex + dir + "/" + fname;
			//
			// 上記までの結果、urlは、例えば次のような文字列となる。
			//
			//		jdbc:ucanaccess://C:/Java/db/flight.accdb
			//
			//
			String sql_select = "SELECT * FROM M_機体";
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
