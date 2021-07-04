require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context 'ユーザ新規登録ができない時/異常系' do
      it 'last_nameが空では登録できない' do
        @user.last_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Last name can't be blank"
      end
      it 'first_name1が空では登録できない' do
        @user.first_name1 = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "First name1 can't be blank"
      end
      it 'first_name2が空では登録できない' do
        @user.first_name2 = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "First name2 can't be blank"
      end
      it 'last_nameが英語意外登録できない' do
        @user.last_name = '田中'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Last name is invalid'
      end
      it 'first_name1が空では登録できない' do
        @user.first_name1 = 'タロウ'
        @user.valid?
        expect(@user.errors.full_messages).to include 'First name1 is invalid'
      end
      it 'first_name2が空では登録できない' do
        @user.first_name2 = 'じろう'
        @user.valid?
        expect(@user.errors.full_messages).to include 'First name2 is invalid'
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it 'emailは＠がないと登録できない' do
        @user.email = 'test.com'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end
      it 'areaが空では登録できない' do
        @user.area = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Area can't be blank"
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank", "Password confirmation doesn't match Password"
      end
      it 'passwordが6字未満だと登録できない' do
        @user.password = 'test12'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it 'passwordが半角英数字以外では登録できない' do
        @user.password = 'パスワード登録'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password", 'Password is invalid'
      end
      it 'passwordが半角英字だけだと登録できない' do
        @user.password = 'testtest'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password", 'Password is invalid'
      end
      it 'passwordが数字だけだと登録できない' do
        @user.password = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password", 'Password is invalid'
      end
      it 'password_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
    end
    context 'ユーザ新規登録ができる時/正常系' do
      it 'last_nameが半角英字で登録できる' do
        @user.last_name = 'kaneki'
        expect(@user).to be_valid
      end
      it 'first_name1が半角英字であれば登録できる' do
        @user.first_name1 = 'ken'
        expect(@user).to be_valid
      end
      it 'first_name2があれば登録できる' do
        @user.first_name2 = 'toka'
        expect(@user).to be_valid
      end
      it 'anniversaryがあれば登録できる' do
        @user.anniversary = '2019/09/01'
        expect(@user).to be_valid
      end
      it 'anniversaryが空でも登録できる' do
        @user.anniversary = ''
        expect(@user).to be_valid
      end
      it 'areaがあれば登録できる' do
        @user.area = '北海道'
        expect(@user).to be_valid
      end
      it 'emailがあれば登録できる' do
        @user.email = 'kkk@gmail.com'
        expect(@user).to be_valid
      end
      it 'メールアドレスは、@を含め登録できる' do
        @user.email = 'kkk@gmail.com'
        expect(@user).to be_valid
      end
      it 'passwordがあれば登録できる' do
        @user.password = 'test123'
        @user.password_confirmation = 'test123'
        expect(@user).to be_valid
      end
      it 'パスワードは、6文字以上であれば登録できる' do
        @user.password = 'test123'
        @user.password_confirmation = 'test123'
        expect(@user).to be_valid
      end
      it 'パスワードは、半角英数字混合であれば登録できる' do
        @user.password = 'test123'
        @user.password_confirmation = 'test123'
        expect(@user).to be_valid
      end
      it 'パスワードは、確認用を含めて2回入力すれば登録できる' do
        @user.password = 'test123'
        @user.password_confirmation = 'test123'
        expect(@user).to be_valid
      end
      it 'パスワードとパスワード（確認用）は、値の一致すれば登録できる' do
        @user.password = 'test123'
        @user.password_confirmation = 'test123'
        expect(@user).to be_valid
      end
    end
  end
end
