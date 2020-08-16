class Subject < ApplicationRecord
    has_many_belongs_to :students

    # def student_attributes=(student)
    #     self.student = Student.find_or_create_by(name: student[:name])
    #     self.student.update(student)
    # end
end
