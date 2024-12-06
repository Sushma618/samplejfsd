package com.jfsd.project;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer> {

    @Query("SELECT f FROM Faculty f WHERE f.email = ?1 AND f.password = ?2")
    Faculty checkFacultyLogin(String email, String password);
}
