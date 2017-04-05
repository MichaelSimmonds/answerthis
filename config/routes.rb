Rails.application.routes.draw do


  resources :profiles, except: [ :destroy ]


  resources :results, except: [ :show, :destroy ]


  resources :questionnaires, only: [ :show ] do
    resources :questions, only: [ :show ] do
      resources :answers, only: [ :show ]
    end
  end

  resources :questionnaires, only: [ :new, :create ] do
    resources :questions, except: [ :show ] do
      resources :answers, except: [ :show]
    end
  end

  get 'client_show', to: 'questionnaires#client_show' do
  end


  resources :responses, except: [ :edit, :update, :destroy ]


  resources :prize_pools, except: [ :edit, :update, :destroy ]


  resources :prizes


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', :registrations => "registrations"}
  # devise_for :users, :controllers => {:registrations => "registrations"}

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
