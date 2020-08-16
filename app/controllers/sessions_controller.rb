class SessionsController < ApplicationController

    def new #idk
      @user = User.new
    end

    def create #idk
      @user = User.find_by_email(user_params[:email])

        if @user && @user.authenticate(user_params[:password])
            session[:user_id] = @user.id
            redirect_to students_path(@user)
        else
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

  private
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
