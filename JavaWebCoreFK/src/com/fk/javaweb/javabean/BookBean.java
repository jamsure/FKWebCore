package com.fk.javaweb.javabean;

public class BookBean {
	private String BookName="";
	private int BookNum=1;
	public BookBean() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the bookName
	 */
	public String getBookName() {
		return BookName;
	}
	/**
	 * @param bookName the bookName to set
	 */
	public void setBookName(String bookName) {
		BookName = bookName;
	}
	/**
	 * @return the bookNum
	 */
	public int getBookNum() {
		return BookNum;
	}
	/**
	 * @param bookNum the bookNum to set
	 */
	public void setBookNum(int bookNum) {
		BookNum = bookNum;
	}
	
}
