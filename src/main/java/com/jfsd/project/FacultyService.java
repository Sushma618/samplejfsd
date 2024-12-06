package com.jfsd.project;

public interface FacultyService {

    String registerFaculty(Faculty faculty);

    Faculty checkFacultyLogin(String email, String password);
}
