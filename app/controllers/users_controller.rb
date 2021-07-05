class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:userpage]
  # before_action :move_to_index, only: :show

  # ユーザーページ（userのログインは不要だが問い合わせしたスタッフは見れる）
  def show
    @user = User.find(params[:id])
    @contact = Contact.find(params[:id])
  end

  # userマイページ(userのログインは必須)
  def userpage
    redirect_to user_path(current_user)
  end

  private

  def move_to_index
    redirect_to root_path unless user_signed_in? && staff_member_signed_in?
  end

  # 問い合わせされていないスタッフから直接アクセスがあった場合root_path誘導
end
