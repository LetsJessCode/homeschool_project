class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :show, :update, :destroy]

    def index ##working
        @students = Student.all
    end
    
    def new ##working
        @student = Student.new
    end  

    def create ## working
        @student = Student.new(student_params)
        if @student.save
            redirect_to students_path
        else
            render :new
        end
    end

    def edit ##working
    end
     
    def update ## working
        @student.update(student_params)
        redirect_to student_path(@student)
   end

   def show
   end

   def destroy ## working
        @student.destroy
        redirect_to students_path
    end 

 private ## working
    def student_params
        params.require(:student).permit(:name, :age, :grade_level)
    end

    def set_student
        @student = Student.find_by_id(params[:id])
    end
end
