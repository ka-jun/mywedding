class StaffMembersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @staff_members = StaffMember.order('created_at DESC')
  end

  def new
    @staff_member = StaffMember.new(staff_member_params)
  end

  def create
    @staff_member = StaffMember.new(staff_member_params)
    redirect_to root_path
  end

  def show

  end

  def edit
  end

  private

  def staff_member_params
    binding.pry
    params.require(:staff_member).permit(:image, :last_name, :first_name, :area, :since, :text)
    .merge(staff_member_id: current_user.id)
  end
end