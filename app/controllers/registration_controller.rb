class RegistrationController < ApplicationController
  def new
  end

  def create
    @user_current = User.where(email: params[:email], password: params[:password]).first
    ApplicationController.set_session(@user_current)
    if @user_current
      redirect_to(club_path)
    else
      redirect_to(invalid_login_password_path)
    end
  end

  def logout
    ApplicationController.set_session(nil)
    redirect_to(root_path)
  end

    def show
  end

  # skip_before_filter :require_login

end  

