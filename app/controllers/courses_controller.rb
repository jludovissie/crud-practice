class CoursesController < ApplicationController
    def new 
        @course = Course.new
    end

    def create
        @course = Course.create()
        if @course.save 
        redirect_to @course 
        end
    end
  

    def show
        @course = Course.find(params[:id])

    end

    def index 
        @course = Course.all 
    end
    
end
