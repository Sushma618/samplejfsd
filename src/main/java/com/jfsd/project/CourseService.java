package com.jfsd.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CourseService {

    @Autowired
    private CourseRepository courseRepository;

    public List<Course> getCoursesForStudent(int studentId) {
        return courseRepository.findByStudents_Id(studentId);
    }

    public List<Course> getCoursesAddedByFaculty(Long facultyId) {
        return courseRepository.findByFacultyId(facultyId); // Fetch courses by faculty ID
    }

    public void addCourse(Course course) {
        courseRepository.save(course);
    }
    public List<Course> getAllCourses() {
        return courseRepository.findAll();
    }

}
