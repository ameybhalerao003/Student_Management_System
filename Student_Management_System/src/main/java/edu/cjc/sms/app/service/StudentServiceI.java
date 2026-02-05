package edu.cjc.sms.app.service;

import java.util.List;

import edu.cjc.sms.app.model.Student;

public interface StudentServiceI {

	public void saveData(Student stu);
	public List<Student> getAllStudent();
	public List<Student> deleteData(int id);
	public List<Student> searchByBatchNumber(String bn);
	public List<Student> pagingData(int pageno,int pagesize);
	public Student getsingleStudentData(int id);
	public void updateStudentFees(int sid,double amount);
	public void updateBatchDetails(int sid,String bn);
	
}
