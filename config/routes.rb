Rails.application.routes.draw do

  devise_for :users
  devise_for :staff_members

  root to: "staff_members#index"

  resources :staff_members do
    resources :contacts
  end
  resources :users
end
