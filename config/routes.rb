Rails.application.routes.draw do

  devise_for :admins, controllers: {
      sessions: 'admin/sessions'
  }

  devise_for :users, controllers: {
      registrations: 'public/registrations',
      sessions: 'public/sessions'
  }


  root 'public/homes#top'

  namespace :public do
    
    get 'homes/top'
    
  end

  namespace :admin do
    
    resources :games, only: [:index, :new, :create, :show, :edit, :update]

    resources :game_links, only: [:show, :create, :edit, :update, :destroy]

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
