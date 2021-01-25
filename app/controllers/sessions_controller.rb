class SessionsController < ApplicationController

  def new #get login

  end

  def create #post login
    if params[:name] == nil || params[:name] == ''
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy #post destroy
    session.delete :name
    redirect_to login_path
  end
end