package com.jfsd.project;


	

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;


	@Service
	public class StudentServiceimpl implements StudentService {

	    @Autowired
	    private StudentRepository studentRepository;

	    @Override
	    public String registerStudent(Student student) {
	        studentRepository.save(student);
	        return "Student registered successfully!";
	    }

	    @Override
	    public Student checkStudentLogin(String email, String password) {
	        return studentRepository.checkStudentLogin(email, password);
	    }
	
}
