package req1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeVO {

	
	Integer no;
	String title, content, cate, orifile, sysfile;
	Date  regDate;
	
	
	
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

	
	
	
	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}



	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}



	public String strRegDate()
	{
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(regDate);
	}
	
	public void parseRegDate(String strRegDate)
	{
		try {
			regDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strRegDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	

	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}



	public String getContent() {
		return content;
	}
	
	public String getContentBr() {
		return content.replaceAll("\n", "<br>") ;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
