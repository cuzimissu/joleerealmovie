package file_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public MemberDAO() {
		// TODO Auto-generated constructor stub
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<MemberVO> list()
	{
		ArrayList<MemberVO> res =new ArrayList<>();

		try {
			sql = "select * from memeber";
			
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
			// TODO Auto-generated catch block
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
			sql = "select * from memeber where id = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, id);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new MemberVO();
				id, pw, gender, email, nick, phone,genre,
				content, name, sysPic, oriPic, path;
				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));
				res.setEmail(rs.getString("email"));
				res.setGender(rs.getString("gender"));
				res.setPhone(rs.getDate("phone"));
				res.setGrade(rs.getInt("grade"));
				res.setGenre(rs.getInt("genre"));
				res.setSysPic(rs.getString("sysPic"));
				res.setOriPic(rs.getString("oriPic"));
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public MemberVO login(MemberVO vo)
	{
		MemberVO res =null;

		try {
			sql = "select * from memeber where id = ? and pw = ?";
			
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
			
			sql = "insert into memeber (id, pw, gender, hobby, email, "
					+ "content, birth, regdate, grade, syspic, oripic) values ("
					+ "?,?,?,?,?,?,?,sysdate,?,?,?)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
			stmt.setString(3, mem.getGender());
		
			stmt.setString(5, mem.getEmail());
			stmt.setString(6, mem.getContent());
			stmt.setString(7, mem.strBirth());
			//stmt.setString(8, mem.strRegDate());
			stmt.setInt(8, mem.getGrade());
			stmt.setString(9, mem.getSysPic());
			stmt.setString(10, mem.getOriPic());
			
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
			
			sql = "select * from memeber where id=?"; 
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			rs = stmt.executeQuery();
			if(rs.next())
				mem.setSysPic(rs.getString("syspic"));
			
			
			
			
			sql = "delete from memeber where id=? and pw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
		
			if(stmt.executeUpdate()>0)
			{	
				res = true;
				new PicFile().fileDelete(mem);
			}
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
			
			sql = "update memeber set  gender = ?,"
				+" hobby = ?, email = ?, content = ?"
				+ " where id=? and pw = ?";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1,mem.getGender() );
			stmt.setString(2,mem.getHobby() );
			stmt.setString(3, mem.getEmail());
			stmt.setString(4, mem.getContent());
			stmt.setString(5, mem.getId());
			stmt.setString(6, mem.getPw());
			
			System.out.println(sql);
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
