class UsersController < ApplicationController
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def show
    @user = User.find(params[:id])
  end



  # private

  # def user_params
  #   params.require(:user).permit(:last_name, :first_name1, :first_name2, :area, :anniversary)
  # end
end
