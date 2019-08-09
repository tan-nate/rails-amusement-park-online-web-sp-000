class SessionsController < ApplicationController
    def new
    end
    
    def create
        @user = User.find_by(name: params[:name])
        if @user == nil
            flash[:alert] = "Cannot find user."
            redirect_to new_session_path
        else
            return head(:forbidden) unless @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        end
    end
end