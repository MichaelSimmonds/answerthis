Rails.application.routes.draw do

  resources :profiles, except: [ :destroy ]
  resources :results, except: [ :show, :new, :edit, :destroy ]
  resources :questionnaires, except: [ :edit, :update, :destroy ]
  resources :questions, except: [ :show ]
  resources :answers, except: [ :show, :destroy ]
  resources :responses, except: [ :new, :edit, :update, :destroy ]
  resources :prize_pools, except: [ :edit, :update, :destroy ]
  resources :prizes

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', :registrations => "registrations"}
  # devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
