package main;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import db.DbUty;

public class Sample03 {
	public static void main(String[] args) {

		try {
			String url = DbUty.getDbUrl();
			//
			String sql_select =
					"SELECT * FROM D_フライト " +
					" WHERE フライト日付=?" +
					" AND 出発地コード=?" +
					"";
			//
			//	パラメータを補完するデータ（フライト日付と出発地コード）
			//
			LocalDate flightDate = LocalDate.of(2020, 5, 30);
			String fromAirport = "NRT";
			//
			Connection conn = DriverManager.getConnection(url);
			PreparedStatement ppst = conn.prepareStatement(sql_select);
			ppst.setDate(1, Date.valueOf(flightDate));
			ppst.setString(2, fromAirport);
			ResultSet rs = ppst.executeQuery();

			while (rs.next()) {
				System.out.println(
					String.format(
						"%s %s %s %s %s %s %s",
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7)
					)
				);
			}
		}
		catch (SQLException e) {
			System.out.println("err: " + e.getMessage());
		}

	}

}
