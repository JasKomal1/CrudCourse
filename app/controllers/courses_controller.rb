class CoursesController < ApplicationController
    def index 
      @courses = Course.all
    end

    def new 
      @course = Course.new
    end

    def create 
      @course = Course.create(strong_params)
      redirect_to course_path(@course)
    end

    def show 
      @course = Course.find(params[:id])
    end

    def edit 
      @course = Course.find(params[:id])
    end

    def update 
      #@course = Course.find(params[:id])
      @course = Course.update(strong_params)
      redirect_to course_path(@course)
    end

    def destroy 
      Course.find(params[:id]).destroy
      redirect_to courses_path
    end

    private

    def strong_params
        params.require(:course).permit(:name, :seat_limit, :classroom_number)
    end
end
