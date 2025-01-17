package kh.teamproject.apton.calendar.model.vo;

import java.sql.Date;

public class Calendar {
	private int calendar_num;
	private String admin_id;
	private String calendar_title;
	private String calendar_content;
	private String calendar_startdate;
	private String calendar_enddate;
	
	public int getCalendar_num() {
		return calendar_num;
	}
	public void setCalendar_num(int calendar_num) {
		this.calendar_num = calendar_num;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getCalendar_title() {
		return calendar_title;
	}
	public void setCalendar_title(String calendar_title) {
		this.calendar_title = calendar_title;
	}
	public String getCalendar_content() {
		return calendar_content;
	}
	public void setCalendar_content(String calendar_content) {
		this.calendar_content = calendar_content;
	}
	public String getCalendar_startdate() {
		return calendar_startdate;
	}
	@Override
	public String toString() {
		return "Calendar [calendar_num=" + calendar_num + ", admin_id=" + admin_id + ", calendar_title="
				+ calendar_title + ", calendar_content=" + calendar_content + ", calendar_startdate="
				+ calendar_startdate + ", calendar_enddate=" + calendar_enddate + "]";
	}
	public void setCalendar_startdate(String calendar_startdate) {
		this.calendar_startdate = calendar_startdate;
	}
	public String getCalendar_enddate() {
		return calendar_enddate;
	}
	public void setCalendar_enddate(String calendar_enddate) {
		this.calendar_enddate = calendar_enddate;
	}
}
