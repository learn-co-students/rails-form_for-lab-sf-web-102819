class SchoolClassesController < ApplicationController
  before_action :get_school_class, only: [:show, :edit, :update]
  def show
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.create(class_params(:title, :room_number))
    # @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to school_class_path(@class)
  end

  def edit
  end

  def update
    @class.update(class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  private

  def get_school_class
    @class = SchoolClass.find(params[:id])
  end

  def class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
