Rails.application.routes.draw do
  devise_for :officers
  root 'pages#home'

  resources :guilds
end
