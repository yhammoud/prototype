class UsersController < ApplicationController
  def new

  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      if user.is_admin == 1
        # redirect_to '/admin_panel'
      else
         redirect_to '/home'
      end
    else
      # redirect_to '/signup'
    end
  end


  def user_params
    user_modified_params =  params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation)
    email = params[:user][:email] + '@gatech.edu'
    user_modified_params[:email] = email
    return user_modified_params
  end

end
