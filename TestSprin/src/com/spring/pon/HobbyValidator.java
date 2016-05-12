package com.spring.pon;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
public class HobbyValidator implements ConstraintValidator<IsValidHobby,String>{
	private String listOfValidHobbes;
	@Override
	public void initialize(IsValidHobby isValidaHobby){
		this.listOfValidHobbes=isValidaHobby.listOfValidHobbies();
	}
	@Override
	public boolean isValid(String studentHobby,ConstraintValidatorContext ctx){
		
		if(studentHobby == null){
			
			return false;
		}
		if(studentHobby.matches(listOfValidHobbes)){
			
			return true;
		}else{return false;
		}}
	}


