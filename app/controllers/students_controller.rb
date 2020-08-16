class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :show, :update, :destroy]

    def index ##working
        @students = Student.all
    end
    
    def new ##bugs!
        @student = Student.new
        @student.subjects.build
    end  

    def create #bugs!
        @student = current_user.students.build(student_params)
            if @student.save ###undefined method `grade' for #<Student
                redirect_to user_students_path(current_user)
            else
                render :new
            end
      end

    def edit ##working
    end
     
    def update ## working
        @student.update(student_params)
        redirect_to user_student_path(current_user, @student)
   end

   def show
   end

   def destroy ## working
        @student.destroy
        redirect_to user_students_path(current_user)
    end 

 private 
    def student_params
        params.require(:student).permit(:name, :age, :grade_level, 
        subjects_attributes: [
            :english,
            :math,
            :science,
            :history,
            :foreign_language
          ]
       )
    end

    def set_student ## working
        @student = Student.find_by_id(params[:id])
    end
end
