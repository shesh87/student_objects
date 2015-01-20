

class Students
	attr_reader :first_name, :scores, :students


	def initialize(first_name, scores)
		@first_name = first_name
		@scores = scores


	end

	def average
		self.scores.reduce(0) do |sum, value|
  			sum + value / self.scores.length

		end
	end

	def letter_grade
		average = self.average
		if average >= 90
			return "A"
		elsif average >= 80
			return "B"
		elsif average >= 70
			return "C"
		elsif average >= 60
			return "D"
		else
			return "F"
		end
	end
end




students = []


students.push(alex = Students.new("Alex", [100, 100, 100, 0, 100]))
students.push(howard = Students.new("howard", [50, 40, 100, 80, 95]))
students.push(teri = Students.new("Teri", [100, 100, 80, 60, 45]))
students.push(jasmine = Students.new("Jasmine", [100, 90, 80, 75, 95]))
students.push(sheonna = Students.new("Sheonna", [100, 100, 85, 60, 100]))


# puts students[0].first_name
# puts students[0].scores.length
# puts students[0].scores[0] == students[0].scores[4]
# puts students[0].scores[3]


puts students[3].average
puts students[3].letter_grade

