Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :new, :create, :show, :edit, :update] do

    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]

  mount Attachinary::Engine => "/attachinary"
end
