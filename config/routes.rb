Rails.application.routes.draw do

  get 'bookmarks/new'

  get 'bookmarks/edit'

  get 'bookmarks/show'

  devise_for :users
  get 'welcome/index'
  resources :topics

  root to: 'welcome#index'

  # Incoming Mail From MailGun
  post :incoming, to: 'incoming#create'
end
