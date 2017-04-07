Rails.application.routes.draw do


  ActiveAdmin.routes(self)

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: "registrations", sessions: "sessions" }
  # devise_for :users, :controllers => {:registrations => "registrations"}

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# __________________________________________________________________

  resources :profiles, except: [ :destroy ]
# __________________________________________________________________

  get 'play/:questionnaire_id', to: 'questionnaires#play', as: :play


  get 'random_questionnaire', to: 'questionnaires#random_questionnaire_for_user', as: :random_questionnaire



   resources :questionnaires, only: [ :index, :show, :new, :create ] do
    resources :questions
    resources :results, only: [ :new, :create, :edit, :update ]
   end

  resources :questions, only: [:show] do
    resources :answers, except: [ :show ]
  end

  resources :answers, only: [ :show ] do
    resources :responses, except: [ :edit, :update, :destroy ]
  end
#   resources :questionnaires, only: [ :index, :show, :new, :create ] do
#     resources :results, only: [ :new, :create ]
#     resources :prizes, only: [ :index, :show ]

#     resources :questions, only: [:show ] do
#       resources :answers, only: [ :show ]
#     end
#   end

#   resources :questionnaires, only: [ :new, :create ] do
#     resources :prizes, except: [ :index, :show ]
#     resources :questions, except: [ :show ] do
#       resources :answers, except: [ :show ]
#     end
#   end

# __________________________________________________________________

# __________________________________________________________________

end
