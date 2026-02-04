package edu.cjc.sms.app.service;

import java.util.List;

import edu.cjc.sms.app.model.Student;

public interface StudentServiceI {

	public void saveData(Student stu);
	public List<Student> getAllStudent();
	public List<Student> deleteData(int id);
	public List<Student> searchByBatchNumber(String bn);
	
}
