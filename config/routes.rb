Rails.application.routes.draw do

  devise_for :staff_members
  
  root to: "staff_members#index"

  resources :staff_members
end
