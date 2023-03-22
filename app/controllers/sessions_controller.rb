class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def login
        user = User.find_by(email: params[:user][:email])

        if user && user.authenticate(params[:user][:password])
            flash[:success] = "Logged in successfully!";
            redirect_to root_path
        else
            flash[:danger] = "Email or Password Wrong!";
            redirect_to login_path
        end
    end
    
end