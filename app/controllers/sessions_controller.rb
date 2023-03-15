class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def login
        user = User.find_by(email: params[:user][:email])

        if user && user.authenticate(params[:user][:password])
            # User is authenticated
        else
            # Invalid email or password
        end
    end
    
end