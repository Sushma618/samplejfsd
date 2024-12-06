package com.jfsd.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService; // Service for student operations
    
    @Autowired
    private FacultyService facultyService; // Service for faculty operations

    // Home Page
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }

    // Student Registration
    @GetMapping("/studentreg")
    public ModelAndView studentRegistration() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentreg");
        return mv;
    }

    @PostMapping("/insertstudent")
    public ModelAndView insertStudent(HttpServletRequest request) {
        String firstName = request.getParameter("sfirstname");
        String lastName = request.getParameter("slastname");
        String email = request.getParameter("semail");
        String password = request.getParameter("spwd");

        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setEmail(email);
        student.setPassword(password);

        String message = studentService.registerStudent(student);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        mv.addObject("message", message);
        return mv;
    }

    // Faculty Registration
    @GetMapping("/facultyreg")
    public ModelAndView facultyRegistration() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultyreg");
        return mv;
    }

    @PostMapping("/insertfaculty")
    public ModelAndView insertFaculty(HttpServletRequest request) {
        String firstName = request.getParameter("ffirstname");
        String lastName = request.getParameter("flastname");
        String email = request.getParameter("femail");
        String password = request.getParameter("fpwd");

        Faculty faculty = new Faculty();
        faculty.setFirstName(firstName);
        faculty.setLastName(lastName);
        faculty.setEmail(email);
        faculty.setPassword(password);

        String message = facultyService.registerFaculty(faculty);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccessf");
        mv.addObject("message", message);
        return mv;
    }

    // Student Login
    @GetMapping("/studentlogin")
    public ModelAndView studentLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin");
        return mv;
    }

    @PostMapping("/checkstudentlogin")
    public ModelAndView checkStudentLogin(HttpServletRequest request) {
        String email = request.getParameter("semail");
        String password = request.getParameter("spwd");

        Student student = studentService.checkStudentLogin(email, password);
        ModelAndView mv = new ModelAndView();

        if (student != null) {
            mv.setViewName("studentmainnav");
        } else {
            mv.setViewName("studentloginfail");
            mv.addObject("message", "Invalid email or password.");
        }

        return mv;
    }

    // Faculty Login
    @GetMapping("/facultylogin")
    public ModelAndView facultyLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultylogin");
        return mv;
    }

    @PostMapping("/checkfacultylogin")
    public ModelAndView checkFacultyLogin(HttpServletRequest request) {
        String email = request.getParameter("femail");
        String password = request.getParameter("fpwd");

        Faculty faculty = facultyService.checkFacultyLogin(email, password);
        ModelAndView mv = new ModelAndView();

        if (faculty != null) {
            mv.setViewName("facultymainnav");
        } else {
            mv.setViewName("facultyloginfail");
            mv.addObject("message", "Invalid email or password.");
        }

        return mv;
    }

    
    
}
