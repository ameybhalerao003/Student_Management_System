package edu.cjc.sms.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.service.StudentServiceI;

@Controller
public class AdminController {
	
	@Autowired
	StudentServiceI ssi;

	@RequestMapping("/")
	public String prelogin() {
		return "login";
	}

	@RequestMapping("login")
	public String adminlogin(@RequestParam("username") String un,@RequestParam("password") String ps,Model m) {
		if(un.equals("admin") && ps.equals("admin")) {
			List<Student> list = ssi.pagingData(0, 3);
			m.addAttribute("data",list);
			return "adminscreen";
		}else {
			m.addAttribute("login_fail","Enter Valid Login Details");
			return "login";
		}
	}
	
	@RequestMapping("enroll_student")
	public String addstudent(@ModelAttribute Student stu,Model m) {
		ssi.saveData(stu);
		List<Student> list = ssi.getAllStudent();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	@RequestMapping("getall")
	public String getStudentData(@ModelAttribute Student stu,Model m) {
		List<Student> list = ssi.getAllStudent();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	@RequestMapping("delete")
	public String deleteStudentData(@RequestParam("id") int id,Model m) {
		List<Student> list = ssi.deleteData(id);
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	@RequestMapping("search")
	public String searchstudentbybatchNumber(@RequestParam("batchnumber") String bn,Model m) {
		List<Student> list = ssi.searchByBatchNumber(bn);
		if(list.size()>0) {
			m.addAttribute("data",list);
		}else {
			List<Student> list2 = ssi.getAllStudent();
			m.addAttribute("data",list2);
			m.addAttribute("message","No Batches Found Of This BatchNumber " +bn);
		}
		return "adminscreen";
	}
	
	@RequestMapping("paging")
	public String pagingstudent(@RequestParam("pageno") int pn,Model m) {
		int pagesize = 3;
		List<Student> list = ssi.pagingData(pn, pagesize);
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	@RequestMapping("fees")	
	public String onFees(@RequestParam("id") int id,Model m) {
		Student st = ssi.getsingleStudentData(id);
		m.addAttribute("st",st);
		return "fees";
	}
	
	@RequestMapping("payfees")
	public String PayFees(@RequestParam("studentid") int sid,@RequestParam("amount") double amount,Model m) {
		ssi.updateStudentFees(sid, amount);
		List<Student> list = ssi.getAllStudent();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	@RequestMapping("batch")
	public String shiftBatch(@RequestParam("id") int id,Model m) {
		Student st = ssi.getsingleStudentData(id);
		m.addAttribute("st",st);
		return "batch";
	}
	
	@RequestMapping("updatebatch")
	public String updatebatchdetails(@RequestParam("studentid") int sid,@RequestParam("batchnumber") String bn,Model m) {
		ssi.updateBatchDetails(sid, bn);
		List<Student> list = ssi.getAllStudent();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
