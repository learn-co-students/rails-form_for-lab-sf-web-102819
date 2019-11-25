class SchoolClassesController < ApplicationController
    before_action :get_school_class, only: [:show, :edit, :update, :destroy]
    before_action :school_class_params, only: [:create, :update]

    def index
        @school_classes =SchoolClass.all 
    end 

    def new
        @school_class = SchoolClass.new
    end 

    def create
        @school_class = SchoolClass.create(school_class_params)
        redirect_to @school_class
    end 

    def show
       
    end 

    def edit
       
    end 

    def update
        @school_class.update(school_class_params)
        @school_class.save
        redirect_to @school_class
    end 

    private 

    def get_school_class
        @school_class = SchoolClass.find(params[:id])
    end 

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end 
end
