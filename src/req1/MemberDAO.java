package req1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class MemberDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public MemberDAO() {
		
		try {
			/*Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );*/
			Context init = new InitialContext();
			DataSource ds = 
					(DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<MemberVO> list()
	{
		ArrayList<MemberVO> res =new ArrayList<>();

		try {
			sql = "select * from moviemember";
			
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				MemberVO vo = new MemberVO();
				
				vo.setId(rs.getString("id"));
				vo.setEmail(rs.getString("email"));
				
				res.add(vo);
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	public MemberVO detail(String id)
	{
		MemberVO res =null;

		try {
			sql = "select * from moviemember where id = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, id);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new MemberVO();
				
				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));
				res.setGender(rs.getString("gender"));
				res.setNick(rs.getString("nick"));
				res.setPhone(rs.getString("phone"));
				res.setEmail(rs.getString("email"));
				res.setOrifile(rs.getString("orifile"));
				res.setSysfile(rs.getString("sysfile"));
				res.setGenre(rs.getString("genre"));
				res.setGrade(rs.getString("grade"));
		
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	/*public MemberVO join(MemberVO vo)
	{
		Mem
	}*/
	public MemberVO login(MemberVO vo)
	{
		MemberVO res =null;

		try {
			sql = "select * from moviemember where id = ? and pw = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPw());
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new MemberVO();
				
				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	public void insert(MemberVO mem )
	{
		try {
			
			sql = "insert into moviemember (id, pw, name, gender, nick, phone, email, "
					+ "orifile, content, sysfile, genre, grade) values ("
					+ "?,?,?,?,?,?,?,?,?,?,?,?)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
			stmt.setString(3, mem.getName());
			stmt.setString(4, mem.getGender());
			stmt.setString(5, mem.getNick());
			stmt.setString(6, mem.getPhone());
			stmt.setString(7, mem.getEmail());
			stmt.setString(8, mem.getOrifile());
			stmt.setString(9, mem.getSysfile());
			//stmt.setString(8, mem.strRegDate());
			stmt.setString(10, mem.getGrade());
			
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	public boolean delete(MemberVO mem )
	{
		boolean res = false;
		try {
			
			sql = "delete from moviemember where id='" 
			+ mem.getId()
			+"' and pw = '"+ mem.getPw()+"'";
		
			System.out.println(sql);
			if(stmt.executeUpdate(sql)>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	public boolean modify(MemberVO mem )
	{
		boolean res = false;
		try {
			
			sql = "update moviemember set  gender = ?,"
				+" nick = ?, email = ?, orifile = ?, sysfile = ?, genre = ?"
				+ " where id=? and pw = ?";
		
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, mem.getPw());
			stmt.setString(2,mem.getGender());
			stmt.setString(3,mem.getNick());
			stmt.setString(4, mem.getEmail());
			stmt.setString(5, mem.getOrifile());
			stmt.setString(6, mem.getSysfile());
			stmt.setString(7, mem.getGenre());
			
			
			System.out.println(sql);
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}
