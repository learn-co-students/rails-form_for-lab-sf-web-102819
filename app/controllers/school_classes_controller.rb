class SchoolClassesController < ApplicationController
    before_action :all_classes, only: :index
    before_action :find_class, only: [:show, :edit, :update]

    def index
    end

    def new
        @class = SchoolClass.new
    end

    def create
        @class = SchoolClass.create(class_params)
        redirect_to school_class_path(@class)
    end

    def show
    end

    def edit
    end

    def update
        @class.update(class_params)
        redirect_to school_class_path(@class)
    end

    private

    def all_classes
        @classes = SchoolClass.all
    end

    def find_class
        @class = SchoolClass.find(params[:id])
    end

    def class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end
