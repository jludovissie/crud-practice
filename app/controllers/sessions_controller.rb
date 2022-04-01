class SessionsController < ApplicationController
    def new 
        student = Student.find_by(email: params[:session][:email]) 
    end

    def create 

    end

    def destroy 

    end
end