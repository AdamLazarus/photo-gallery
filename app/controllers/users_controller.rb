class UsersController < ApplicationController
#before_filter :authenticate_user!

  def show
    @user = User.find(current_user.id)

    respond_to do |format|
        format.html # show.html.erb
    end
  end

  def destroy
    images = Image.where("uid = ?", current_user.id)
            images.each do |image|
              image.destroy
          end
    @user = User.find(current_user.id).destroy
    flash[:success] = "User deleted"
    redirect_to new_user_registration_path
  end
end
