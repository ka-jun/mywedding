require 'rails_helper'

RSpec.describe StaffMember, type: :model do
  before do
    @staff_member = FactoryBot.build(:staff_member)
  end
  describe 'ユーザー新規登録' do
    context 'ユーザ新規登録ができない時/異常系' do
      it 'last_nameが空では登録できない' do
        @staff_member.last_name = ''  
        @staff_member.valid?
        binding.pry
        expect(@staff_member.errors.full_messages).to include  "Last name can't be blank", "Last name is invalid"
      end
      it 'first_nameが空では登録できない' do
        @staff_member.first_name = ''  
        @staff_member.valid?
        binding.pry
        expect(@staff_member.errors.full_messages).to include "First name can't be blank", "First name is invalid"
      end
      it 'emailが空では登録できない' do
        @staff_member.email = ''  
        @staff_member.valid?
        binding.pry
        expect(@staff_member.errors.full_messages).to include "Email can't be blank"
      end
      it 'passwordが空では登録できない' do
        @staff_member.passworde = ''
        @staff_member.valid?
        binding.pry
        # expect(@staff_member.errors.full_messages).to include "First name1 can't be blank"
      end
      it 'password_confirmationが空では登録できない' do
        @staff_member.password_confirmation = ''  
        @staff_member.valid?
        binding.pry
        # expect(@staff_member.errors.full_messages).to include "First name1 can't be blank"
      end
      it 'areaが空では登録できない' do
        @staff_member.area = ''  
        @staff_member.valid?
        binding.pry
        # expect(@staff_member.errors.full_messages).to include "First name1 can't be blank"
      end
      it 'sinceが空では登録できない' do
        @staff_member.since = ''  
        @staff_member.valid?
        binding.pry
        # expect(@staff_member.errors.full_messages).to include "First name1 can't be blank"
      end
      it 'textが空では登録できない' do
        @staff_member.text = ''  
        @staff_member.valid?
        binding.pry
        # expect(@staff_member.errors.full_messages).to include "First name1 can't be blank"
      end
      it 'imageが空では登録できない' do
        @staff_member.image = nil  
        @staff_member.valid?
        binding.pry
        # expect(@staff_member.errors.full_messages).to include "Last name can't be blank"
      end
    end
  end
end
