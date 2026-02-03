package edu.cjc.sms.app.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentid;
	private String studentfullname;
	private String studentemail;
	private int studentage;
	private String studentcollagename;
	private String studentcourse;
	private String batchnumber;
	private String batchmode;
	private double feespaid;
	public int getStudentid() {
		return studentid;
	}
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}
	public String getStudentfullname() {
		return studentfullname;
	}
	public void setStudentfullname(String studentfullname) {
		this.studentfullname = studentfullname;
	}
	public String getStudentemail() {
		return studentemail;
	}
	public void setStudentemail(String studentemail) {
		this.studentemail = studentemail;
	}
	public int getStudentage() {
		return studentage;
	}
	public void setStudentage(int studentage) {
		this.studentage = studentage;
	}
	public String getStudentcollagename() {
		return studentcollagename;
	}
	public void setStudentcollagename(String studentcollagename) {
		this.studentcollagename = studentcollagename;
	}
	public String getStudentcourse() {
		return studentcourse;
	}
	public void setStudentcourse(String studentcourse) {
		this.studentcourse = studentcourse;
	}
	public String getBatchnumber() {
		return batchnumber;
	}
	public void setBatchnumber(String batchnumber) {
		this.batchnumber = batchnumber;
	}
	public String getBatchmode() {
		return batchmode;
	}
	public void setBatchmode(String batchmode) {
		this.batchmode = batchmode;
	}
	public double getFeespaid() {
		return feespaid;
	}
	public void setFeespaid(double feespaid) {
		this.feespaid = feespaid;
	}

}
