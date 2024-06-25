class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find(email: params[:email])
        if user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to "/", notice: "Login Successful"
        else
            flash[:notice] = "Invalid email or password"
            puts "Invalid email or password*************************************"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to "/", notice: "Logged out"
    end

end