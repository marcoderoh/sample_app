class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		#log in the user and redirect to the users' show page
  	else
  		#create an error msg
  	    flash.now[:danger] = 'Invalid email/password' 

  	render 'new'
  end
  end 

  def destroy
  end
end
