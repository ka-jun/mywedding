class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:userpage]
  before_action :move_to_index, only: :show

  # ユーザーページ（userのログインは不要だが問い合わせしたスタッフは見れる）
  def show
    @user = User.find(params[:id])
  end

  # userマイページ(userのログインは必須)
  def userpage
    redirect_to user_path(current_user)
  end

  private

  def move_to_index
    @contact = Contact.find(params[:contact_id])
    redirect_to root_path 
    unless user_signed_in? && @contact.user_id == current_user.id || staff_member_signed_in? && @contact.staff_member_id == current_staff_member.id
    end
  end

  def user_params
    params.require(:user).permit(:email, ).merge(user_id: current_user.id, staff_member_id: params[:staff_member_id])
  end
end
