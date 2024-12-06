package com.jfsd.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FacultyServiceImpl implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    @Override
    public String registerFaculty(Faculty faculty) {
        facultyRepository.save(faculty);
        return "Faculty registered successfully!";
    }

    @Override
    public Faculty checkFacultyLogin(String email, String password) {
        return facultyRepository.checkFacultyLogin(email, password);
    }
}
