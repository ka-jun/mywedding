class StaffMembersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @staff_members = StaffMember.all
  end

  def show
    # @staff_member = StaffMember.find(params[:id])
  end

  def edit
  end

  private

  def staff_member_params
    params.require(:staff_member).permit(:image, :last_name, :first_name, :area, :since, :text)
    .merge(staff_member_id: current_staff_member.id)
  end
end