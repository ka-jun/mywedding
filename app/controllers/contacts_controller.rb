class ContactsController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    if @contact.valid?
      @contact.save
      return redirect_to root_path
    end
    # 問い合わせ完了しました、と表示させるページを作成
  end

  def show
    @contact = Contact.find(params[:staff_member_id])
  end

  private

  def contact_params
    params.require(:contact).permit(:text).merge(user_id: current_user.id, staff_member_id: params[:staff_member_id])
  end
end
