package file_p1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class MemberVO {

	String id, pw, gender, hobby, email, 
	content, name, sysPic, oriPic, path;
	
	
	
	public boolean isImgChk() {
		
		boolean res = false; 
		
		ArrayList<String>imgArr = new ArrayList<>();
		imgArr.add("jpg");
		imgArr.add("jpeg");
		imgArr.add("bmp");
		imgArr.add("gif");
		imgArr.add("png");
		
		if(sysPic!=null && !sysPic.equals("")&& !sysPic.equals("null"))
		{
			String ext = sysPic.toLowerCase().substring(sysPic.lastIndexOf(".")+1);
			res = imgArr.contains(ext);
		}
		
		
		return res;
	}



	public String getPath() {
		return path;
	}



	public void setPath(String path) {
		this.path = path;
	}



	public String getSysPic() {
		return sysPic;
	}



	public void setSysPic(String sysPic) {
		this.sysPic = sysPic;
	}



	public String getOriPic() {
		return oriPic;
	}



	public void setOriPic(String oriPic) {
		this.oriPic = oriPic;
	}

	Integer grade;
	
	Date birth, regDate;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public MemberVO(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String strRegDate()
	{
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(regDate);
	}
	
	public String strBirth()
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
	
	public void parseRegDate(String strRegDate)
	{
		try {
			regDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strRegDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}