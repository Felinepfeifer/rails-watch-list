Rails.application.routes.draw do
  resources :lists, only: [:index, :create, :show, :new] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
