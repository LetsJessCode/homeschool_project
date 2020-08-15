class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :show, :update]

    def index
        @students = Student.all
    end
    
    def new
        @student = Student.new
    end  

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to students_path
        else
            render :new
        end
    end

    def edit
    end
     
    def update
        @student.update(student_params)
        redirect_to student_path(@student)
   end

   def show
   end

 private
    def student_params
        params.require(:student).permit(:name, :age, :grade_level)
    end

    def set_student
        @student = Student.find_by_id(params[:id])
    end
end
