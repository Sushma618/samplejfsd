package com.jfsd.project;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CourseRepository extends JpaRepository<Course, Long> {

    // Find courses by faculty ID
    List<Course> findByFacultyId(Long facultyId);
    
    // Find courses by student ID
    List<Course> findByStudents_Id(int studentId);
}
