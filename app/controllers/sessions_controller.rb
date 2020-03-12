class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(id: params[:session][:id])
    if user
      session[:user_id] = user.id
      redirect_to events_index_path
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
