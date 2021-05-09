class SignupController < ApplicationController
  protect_from_forgery except: :sign_up
  def index
  end

  def create
    @user = User.new
  end



end
