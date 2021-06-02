package com.soit.notice.vo;

import java.util.Date;

public class NoticeVO {
	private int bbs_num;
	private String title;
	private String content;
	private Date up_date;
	private int hit;
	
	public int getBbs_num() {
		return bbs_num;
	}
	public void setBbs_num(int bbs_num) {
		this.bbs_num = bbs_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getUp_date() {
		return up_date;
	}
	public void setUp_date(Date up_date) {
		this.up_date = up_date;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
}
