class StaffMembersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @staff_members = StaffMember.order('created_at DESC')
  end

  def show
  end

  def edit
  end

  private

  def staff_member_params
    params.require(:staff_member).permit(:image, :last_name, :first_name, :area, :since, :text)
  end
end