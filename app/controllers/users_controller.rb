class UsersController < ApplicationController
  before_action :authenticate_user!, only: :userpage

    # userマイページ(userのログインは必須)
    def userpage
      redirect_to user_path(current_user)
    end
    
  # ユーザーページ（userのログインは不要だが問い合わせしたスタッフは見れる）
  def show
    @user = User.find(params[:id])
  end




end
