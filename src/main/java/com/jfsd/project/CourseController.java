package com.jfsd.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/myCourses")
    public String viewMyCourses(Model model) {
        int studentId = getLoggedInStudentId(); // Replace with logic to fetch logged-in student ID
        model.addAttribute("courses", courseService.getCoursesForStudent(studentId));
        return "myCourses";
    }

    private int getLoggedInStudentId() {
		// TODO Auto-generated method stub
		return 1;
	}

	// Show form to add a new course
    @GetMapping("/addCourse")
    public String showAddCourseForm(Model model) {
        model.addAttribute("course", new Course());
        return "addCourse"; // Maps to addCourse.jsp
    }

    // Handle the form submission to add a new course
    @PostMapping("/addCourse")
    public String addCourse(@ModelAttribute("course") Course course) {
        courseService.addCourse(course); // Save the course
        return "redirect:/myCourses"; 
    }// Redirect to view courses page
        
        @GetMapping("/studentDashboard")
        public String studentDashboard(Model model, @RequestParam("studentId") int studentId) {
            // Retrieve the courses added by the faculty for the given student
            List<Course> courses = courseService.getCoursesForStudent(studentId);

            // Add the courses to the model to display on the student dashboard
            model.addAttribute("courses", courses);
            return "studentDashboard";
    }
        
        @GetMapping("/allCourses")
        public String viewAllCourses(Model model) {
            model.addAttribute("courses", courseService.getAllCourses());
            return "allCourses"; // Maps to allCourses.jsp
        }

}
