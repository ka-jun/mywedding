class UsersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def staff_member_params
    params.require(:user).permit(:last_name, :first_name1,  :first_name1, :area, :anniversary)
  end
end
