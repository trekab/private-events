class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(id: params[:session][:id])
    if user
      session[:user_id] = user.id
      redirect_to users_show_path
    else
      render 'new'
    end
  end

  def destroy

  end

end