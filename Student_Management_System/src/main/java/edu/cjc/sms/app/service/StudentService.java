package edu.cjc.sms.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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

	@Override
	public List<Student> pagingData(int pageno, int pagesize) {
		Pageable p = PageRequest.of(pageno, pagesize);
		Page<Student> page = sri.findAll(p);
		List<Student> list = page.getContent();
		return list;
	}

	@Override
	public Student getsingleStudentData(int id) {
		Optional<Student> op = sri.findById(id);
		if(op.isPresent()) {
			Student st = op.get();
			return st;
		}else {
			return null;	
		}
	}

	@Override
	public void updateStudentFees(int sid, double amount) {
		Optional<Student> op = sri.findById(sid);
		Student st = op.get();
		st.setFeespaid(st.getFeespaid()+amount);
		sri.save(st);
	}

	@Override
	public void updateBatchDetails(int sid, String bn) {
		Optional<Student> op = sri.findById(sid);
		Student st = op.get();
		st.setBatchnumber(bn);
		sri.save(st);
	}
	
}
