package edu.cjc.sms.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sms.app.Repository.StudentRepoI;
import edu.cjc.sms.app.model.Student;

@Service
public class StudentService implements StudentServiceI {

	@Autowired
	StudentRepoI sri;

	@Override
	public void saveData(Student stu) {
		sri.save(stu);
	}

	@Override
	public List<Student> getAllStudent() {
		List<Student> list = sri.findAll();
		return list;
	}

	@Override
	public List<Student> deleteData(int id) {
		sri.deleteById(id);
		List<Student> list = sri.findAll();
		return list;
	}

	@Override
	public List<Student> searchByBatchNumber(String bn) {
		List<Student> list = sri.findAllByBatchnumber(bn);
		return list;
	}
	
}
