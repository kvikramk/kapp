class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      # Sign the user in and redirect to the user's show page.
      sign_in user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end