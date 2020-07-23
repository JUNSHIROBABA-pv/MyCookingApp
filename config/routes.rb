Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    omniauth_callbacks:  "users/omniauth_callbacks" 
  }

  devise_scope :user do
    get 'users/select' => 'users/registrations#select'
  end

  root "recipes#index"
  resources :recipes

  get 'select' => "recipes#select"
end
