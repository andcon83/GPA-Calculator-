# Grade   	    QP         Grade     QP        Grade      QP        Grade       QP        Grade        QP            
# A             4.0         B+       3.3         B-        2.7         C         2.0         D         1.0
# A-            3.7         B         3.0         C+       2.3         C-        1.7         F          0.0
#  3.7 < x <= 4.0 : A
#  3.3 < x <= 3.7 : A-
#  3.0 < x <= 3.3 : B+
#  2.7 < x <= 3.0 : B
#  2.3 < x <= 2.7 : B-
#  2.0 < x <= 2.3 : C+
#  1.7 < x <= 2.0 : C
#  1.0 < x <= 1.7 : C-
#  1.0 : D
#  x<1.0 : F

number_of_grades = 0
grade_sum = 0.0
gpa = 0
total=0


def does_user_say_no question
	question == "stop"
end

def convert_letterGrade_to_number(letter_grade)
	grade = 0;
	case letter_grade
	when "A"
		grade =  4.0
	when "A-"
		grade =  3.7
	when "B+"
		grade =  3.3
	when "B"
		grade =  3.0
	when "B-"
		grade =  2.7
	when "C+"
		grade =  2.3
	when "C"
		grade =  2.0
	when "C-"
		grade =  1.7
	when "D"
		grade =  1.0
	when "F"
		grade = 0.0
		
	end

	grade

end

def convert_numberGrade_to_letterGrade(number_grade)
  #  3.7 < x <= 4.0 : A
  #  3.3 < x <= 3.7 : A-
  #  3.0 < x <= 3.3 : B+
  #  2.7 < x <= 3.0 : B
  #  2.3 < x <= 2.7 : B-
  #  2.0 < x <= 2.3 : C+
 	#  1.7 < x <= 2.0 : C
 	#  1.0 < x <= 1.7 : C-
 	#  1.0 : DSS
 	#  x<1.0 : F



	if (number_grade > 93 && number_grade <= 100)
		letter_grade =  "A"
	elsif (number_grade > 90 && number_grade <= 92)
		letter_grade =  "A-"
	elsif (number_grade > 87 && number_grade <= 89)
		letter_grade =  "B+"
	elsif (number_grade > 83 && number_grade <= 86)
		letter_grade =  "B"
	elsif (number_grade > 80 && number_grade <= 82)
		letter_grade =  "B-"
	elsif (number_grade > 77 && number_grade <= 79)
		letter_grade =  "C+"
	elsif (number_grade > 73 && number_grade <= 76)
		letter_grade =  "C"
	elsif (number_grade > 70 && number_grade <= 72)
		letter_grade =  "C-"
	elsif (number_grade > 60 && number_grade <= 69) 
		letter_grade =  "D"
	elsif number_grade < 59
		letter_grade = "F"
	else
		puts " "

	end

	letter_grade

end
grades=[100,99,64,72,92]


#number grade to letter grade.
#letter grade to grade points
#you need to write a method that adds up all the grade points and divides by the number of grades
 
def grade_sum(grades)
	total=0
	grades.each do|grade|
		grade=convert_numberGrade_to_letterGrade(grade)
		grade=convert_letterGrade_to_number(grade)
		total+=total+grade
	end 
end

def findgpa(grades)
	gpa_sum=grade_sum(grades)
	gpa = gpa_sum/grades.length 
	gpa
end 
