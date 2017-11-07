package req1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVO {

	String id,pw,name,gender,nick 
			,phone,email,orifile,sysfile,genre, grade;
	
	
	
	public MemberVO(String id, String pw, String name, String gender, String nick, String phone, String email,
			String orifile, String sysfile, String genre, String grade) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.nick = nick;
		this.phone = phone;
		this.email = email;
		this.orifile = orifile;
		this.sysfile = sysfile;
		this.genre = genre;
		this.grade = grade;
	}

	
	
	public MemberVO(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}


	
	/*public String strRegDate()
	{
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(regDate);
	}*/
	
	/*public String strBirth()
	{
		return new SimpleDateFormat("yyyy-MM-dd").format(birth);
	}
	
	public void parseBirth(String strBirth)
	{
		try {
			birth = new SimpleDateFormat("yyyy-MM-dd").parse(strBirth);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	*/
	/*public void parseRegDate(String strRegDate)
	{
		try {
			regDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strRegDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}*/

	public MemberVO() {
		
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOrifile() {
		return orifile;
	}

	public void setOrifile(String orifile) {
		this.orifile = orifile;
	}

	public String getSysfile() {
		return sysfile;
	}

	public void setSysfile(String sysfile) {
		this.sysfile = sysfile;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
}
