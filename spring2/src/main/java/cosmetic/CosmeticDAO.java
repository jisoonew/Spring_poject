package cosmetic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CosmeticDAO {
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";
	
	public Connection open() {
		Connection conn = null;
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL,"jwbook","1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public List<Cosmetic> getAll() throws Exception {
		Connection conn = open();
		List<Cosmetic> CosmeticList = new ArrayList<>();
		
		String sql = "select cosmetic_id, cosmetic_name, cosmetic_price, cosmetic_img from cosmetic";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		try {
			while(rs.next()) {
				Cosmetic n = new Cosmetic();
				n.setCosmetic_id(rs.getInt("cosmetic_id"));
				n.setCosmetic_name(rs.getString("cosmetic_name"));
				n.setCosmetic_price(rs.getInt("cosmetic_price")); 
				n.setCosmetic_img(rs.getString("cosmetic_img"));
				
				CosmeticList.add(n);
			}
					
		} catch(Exception e) {
			e.printStackTrace();
		}
		return CosmeticList;
	}
	
	public Cosmetic getCosmetic(int cosmetic_id) throws SQLException {
		Connection conn = open();
		
		Cosmetic n = new Cosmetic();
		String sql = "select cosmetic_id, cosmetic_name, cosmetic_price, cosmetic_img from cosmetic where cosmetic_id=?";
	
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, cosmetic_id);
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		
		try {
			n.setCosmetic_id(rs.getInt("cosmetic_id"));
			n.setCosmetic_name(rs.getString("cosmetic_name"));
			n.setCosmetic_price(rs.getInt("cosmetic_price"));
			n.setCosmetic_img(rs.getString("cosmetic_img"));

			pstmt.executeQuery();
			return n;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return n;
	}
	
	public void addCosmetic(Cosmetic n) throws Exception {
		Connection conn = open();
		
		String sql = "insert into Cosmetic(cosmetic_name,Cosmetic_price,cosmetic_type) values(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try {
			pstmt.setString(1, n.getCosmetic_name());
			pstmt.setInt(2, n.getCosmetic_price());
			pstmt.setString(3, n.getCosmetic_type());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delCosmetic(int aid) throws SQLException {
		Connection conn = open();
		
		String sql = "delete from Cosmetic where Cosmetic_id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try {
			pstmt.setInt(1, aid);
			if(pstmt.executeUpdate() == 0) {
				throw new SQLException("DB에러");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
