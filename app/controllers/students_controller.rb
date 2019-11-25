class StudentsController < ApplicationController
    before_action :student_params, only: [:create, :update]
    before_action :get_student, only: [:show, :edit, :update, :destroy]

    def index
        @students = Student.all 
    end 

    def show 
       
    end 

    def new
        @student = Student.new
    end 

    def create
        @student = Student.create(student_params)
        redirect_to @student
    end 

    def edit
    end 

    def update
        @student.update(student_params)
        @student.save
        redirect_to @student
    end 

    def destroy
        @student.destroy
        redirect_to students_path
    end 

    private 

    def get_student 
        @student = Student.find(params[:id])
    end 
    def student_params
       params.require(:student).permit(:first_name, :last_name)
    end 
end