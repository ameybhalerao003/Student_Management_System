package edu.cjc.sms.app.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.sms.app.model.Student;

@Repository
public interface StudentRepoI extends JpaRepository<Student, Integer> {

	public List<Student> findAllByBatchnumber(String batchnumber);
	
	public List<Student> findAllByBatchnumberAndBatchmode(String bn,String bm);
	
}
