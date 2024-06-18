class RegistrationController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        puts "THE PARAMETER #{params[:user]}***********************************************************"

        if @user.save
            session[:user_id] = @user.id
            redirect_to about_url, notice: "Success"
        else
            puts "ERRRORRRRSSSS #{@user.errors.full_messages} **************"
        end

    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end    

end