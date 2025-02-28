package com.test.dao;

import com.test.model.Student;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author vsjonnal
 */
@Local
public interface StudentDaoLocal {
    
  void addStudent(Student paramStudent);  
  void updateStudent(Student paramStudent);  
  void deleteStudent(int paramInt);  
  Student getStudent(int paramInt);  
  List<Student> getAllStudents();
}
