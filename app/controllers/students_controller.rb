class StudentsController < ApplicationController

    before_action :all_students, only: :index
    before_action :find_student, only: [:show, :edit, :update]

    def index
    end

    def new
        @student = Student.new
    end

    def show
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def edit
    end

    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def all_students
        @students = Student.all
    end

    def find_student
        @student = Student.find_by(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end
