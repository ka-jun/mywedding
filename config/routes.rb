Rails.application.routes.draw do

  devise_for :users
  devise_for :staff_members

  root to: "staff_members#index"
  get '/mypage', to: 'staff_members#mypage'

  resources :staff_members do
    resources :contacts
  end
  resources :users
end
