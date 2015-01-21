Overview
In this challenge you will work with a collection of simple Student objects.
Your program will create arrays of student data, and compute the average scores for each student. An optional challenge will ask you to create a search function.
Topics covered
To achieve this, you will use knowledge of the following:
	•	Designing your own objects
	•	Initializing and populating and array
	•	Compute from arrays
	•	Basic searches
Resources
	•	http://www.ruby-doc.org
Objective 1: Create an Array of Students
Part 1. Create an array students with 5 Students. Each student should be assigned a first_name, and 5 test scores (scores are between 0 and 100) when it is created. The first Student should be named "Alex" with scores[100,100,100,0,100].
Sample code for Student (included in the the gist):
class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    #your code here
  end
ends
After you've updated the Student class and populated your students array, this driver code should pass:
p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0
Part 2. Compute and assign a score average and a letter grade to each student. Letter grades are based on the average (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%).
This driver code should pass:
p students[0].average == 80
p students[0].letter_grade == 'B'
Part 3. Write a linear_search method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1.
This driver code should pass:
p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1
You are done when...
The tests defined at the end of each part will pass.
What to submit
A working program that meets the expectations above, including driver code that includes these tests.
