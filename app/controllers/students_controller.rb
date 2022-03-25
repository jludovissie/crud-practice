class StudentsController < ApplicationController
    before_action :set_student, only:[:show, :edit, :destroy, :update]
    def index
      @student = Student.all    
    end

    def new 
      @student = Student.new  
    end

    def create 
      @student = Student.create(student_params)
      if @student.save 
        redirect_to @student
      else  
       render :new, status: :unprocessable_entity   
      end
    end

    def show 
    end

    def edit 
    end

    def update
      if @student.update(student_params)
        flash[:notice] = "Update Successful"
        redirect_to @student
      else
        render :edit
      end
    end

    def destroy  
       @student.destroy 

       redirect_to students_path
    end

    private 
    def set_student
      @student = Student.find(params[:id])   
    end

    def student_params
        (params.require(:student).permit(:name, :age, :degree))
    end
  
end
