Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  root to: 'welcome#index'

  # Incoming Mail From MailGun
  post :incoming, to: 'incoming#create'
end
