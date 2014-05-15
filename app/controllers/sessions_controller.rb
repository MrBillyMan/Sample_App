class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to user's show page
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end

end
