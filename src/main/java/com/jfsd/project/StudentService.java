package com.jfsd.project;


public interface StudentService {

    public String registerStudent(Student student);
    public Student checkStudentLogin(String email, String password);
}

