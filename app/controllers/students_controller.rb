class StudentsController < ApplicationController
    def index
      @student = Student.all    
    end

    def new 
      @student = Student.new  
    end

    def create 
      @student = Student.create(params.require(:student).permit(:name, :age))
      if @student.save 
        redirect_to @student
      else  
       render :new, status: :unprocessable_entity
          
      end
    end

    def show 
      @student = Student.find(params[:id])  
    end

    def edit 
      @student = Student.find(params[:id])  
    end

    def update
      @student = Student.find(params[:id])  

      if @student.update(params.require(:student).permit(:name, :age))
        flash[:notice] = "Update Successful"
        redirect_to @student
      else
        render :edit
      end
    end

    def destroy 
       @student = Student.find(params[:id])
       @student.destroy 

       redirect_to students_path
    end

end
