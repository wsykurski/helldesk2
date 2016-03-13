class SessionController < ApplicationController
  skip_before_action :authorize, :only => [:new, :create]

  def new
  end

  def create
    if user=User.authenticate(params[:name],params[:password])
      session[:user_id] = user.id
      redirect_to about_url, :notice => "You have loged in!"
    else
      redirect_to login_url, :alert => "Do You feel lucky?"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Thank's God, You're gone !!!"
  end
end
