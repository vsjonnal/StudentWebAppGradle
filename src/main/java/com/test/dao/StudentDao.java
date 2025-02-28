package com.test.dao;

import com.test.model.Student;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class StudentDao implements StudentDaoLocal {

    @PersistenceContext(unitName = "StudentWebAppPU")
    private EntityManager em;

    @Override
    public void addStudent(Student student) {
        this.em.persist(student);
    }

    @Override
    public void updateStudent(Student student) {
        this.em.merge(student);
    }

    @Override
    public void deleteStudent(int studentId) {
        this.em.remove(getStudent(studentId));
    }

    @Override
    public Student getStudent(int studentId) {
        return (Student) this.em.find(Student.class, studentId);
    }

    @Override
    public List<Student> getAllStudents() {
        return this.em.createNamedQuery("Student.getAll").getResultList();
    }
}