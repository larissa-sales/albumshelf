class ShowUserController < ApplicationController

  def turnintoadmin
    current_user.update_attribute :admin, true
    redirect_to show_user_index_path
  end

  def index
     @user = current_user
  end
end
