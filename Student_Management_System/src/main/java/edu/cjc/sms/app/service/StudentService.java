package edu.cjc.sms.app.service;

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
	
}
