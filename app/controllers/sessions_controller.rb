class SessionsController < ApplicationController
    
    before_action :logged_in_redirect, only: [:new]

    def new
        @user = User.new
    end

    def login
        user = User.find_by(email: params[:user][:email])

        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            flash[:success] = "Logged in successfully!";
            redirect_to root_path
        else
            flash[:danger] = "Email or Password Wrong!";
            redirect_to login_path
        end
    end

    def logged_in_redirect
        if logged_in?
            flash[:success] = "You are already logged in!"
            redirect_to root_path
        end
    end
    
end