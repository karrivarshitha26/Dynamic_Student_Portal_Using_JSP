package com.applicationform.application;

public class gradeCalculator {
	
	    public String calculateGrade(int marks) {
	        if (marks >= 90) {
	            return "A Grade";
	        } 
	        else if (marks >= 80) {
	            return "B Grade";
	        } 
	        else if (marks >= 78) {
	            return "C Grade";
	        } 
	        else if (marks >= 55) {
	            return "D Grade";
	        } 
	        else if (marks >=35 ){
	            return "E Grade";
	        }
			return "F Grade";
	    }
}
