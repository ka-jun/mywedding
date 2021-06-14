class StaffMembersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_staff_menber, only: :show

  def index
    @staff_members = StaffMember.order('created_at DESC')
    @user = User.all
  end

  def new
    @staff_member = StaffMember.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  private

  def staff_member_params
    params.require(:staff_member).permit(:image, :last_name, :first_name, :area, :since, :text)
  end

  def set_staff_menber
    @staff_member = StaffMember.find(params[:id])
  end

end