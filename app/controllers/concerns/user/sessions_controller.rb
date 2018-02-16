class User::SessionsController < ApplicationController

  def new
    @user_session = UserSession.new
  end

  def crate
    @user_session = UserSession.new(user_session_params)
    if @user_session.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def destroy
    current_user_session.destory
    redirect_to root_path
  end

  private
    def user_session_params
      params.require(:user_session).permit(:email, :password)
    end
end