class StaticController < ApplicationController
	def index
	puts "********home => current_user??************"
    puts @current_user
	end
	def contact
	end
	def team
	end	

  def not_connected
  end

  def invalid_login_password
  end

  def club
      redirect_to root_path if @user == @current_user
  end


end