class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @contacts = Contact.all

  end

  def create
    @contact = Contact.create(contact_params)
    redirect_to root_path root_url
    # 問い合わせ完了しました、と表示させるページを作成する
  end

  def show
    @contact = Contact.find([:staff_member_id])
  end

  private

  def contact_params
    params.require(:contact).permit(:text).merge(user_id: current_user.id, staff_member_id: params[:staff_member_id])
  end
end
