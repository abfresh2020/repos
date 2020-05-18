package db;

public class DbUty {

	//
	//	起動ディレクトリのflight.accdbを指し示すJDBC用のURLの取得
	//
	public static String getDbUrl() {
		String prefiex = "jdbc:ucanaccess://";
		String fname = "flight.accdb";
		// このプログラムが起動された場所（フォルダー）を取得する。
		String dir = System.getProperty("user.dir");
		//
		String url = prefiex + dir + "/" + fname;
		//
		return url;

	}

}
