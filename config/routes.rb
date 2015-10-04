Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'

  resources :topics do
    resources :bookmarks, only: [:new, :edit, :show]
  end

  root to: 'welcome#index'

  # Incoming Mail From MailGun
  post :incoming, to: 'incoming#create'
end
