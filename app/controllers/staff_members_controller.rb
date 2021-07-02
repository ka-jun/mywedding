class StaffMembersController < ApplicationController
  before_action :authenticate_staff_member!, only: [:mypage]
  before_action :set_staff_menber, only: :show
  before_action :configure_permitted_parameters, if: :devise_controller?


  def index
    @staff_members = StaffMember.order('created_at DESC')
    @user = User.all
  end

  def new
    @staff_member = StaffMember.new
  end

  def show
    @contact = Contact.new
    @contacts = @staff_member.contacts.includes(:user)
  end

  def mypage
    redirect_to staff_member_path(current_staff_member)
  end

  def edit
  end

  def create
    @staff_member = StaffMember.create(staff_member_params)
  end

  private

  def staff_member_params
    params.require(:staff_member).permit(:image, :last_name, :first_name, :area, :since, :text)
  end

  def set_staff_menber
    @staff_member = StaffMember.find(params[:id])
  end



end