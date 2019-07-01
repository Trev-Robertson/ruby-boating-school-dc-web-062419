class Student

    attr_accessor :first_name
    @@all = []
    
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(name)
        @@all.find(name) do |student| 
            student.first_name == name
            student.first_name

        end
    end

    def grade_percentage

        student_tests = BoatingTest.all.select do |tests|
            tests.student == self
        end

        total_tests = student_tests.count
        
        passed_tests = student_tests.select do |tests|
        tests.status == "passed"
        end
        passing = passed_tests.count

        ((passing / total_tests.to_f) * 100).round(2)
       
        end

end

