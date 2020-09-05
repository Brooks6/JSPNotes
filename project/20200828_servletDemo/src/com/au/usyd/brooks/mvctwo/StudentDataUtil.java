package com.au.usyd.brooks.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	public static List<Student> getStudents(){
		// create an empty
		List<Student> students = new ArrayList<>();
		// add sample data
		students.add(new Student("brooks", "liu", "a@163.com"));
		students.add(new Student("bruce", "yu", "b@163.com"));
		students.add(new Student("eden", "xu", "c@163.com"));
		// return the list
		return students;
	}
}
