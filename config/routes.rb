Rails.application.routes.draw do
  root 'newsletters#index'
  resources :newsletters, only: %i[create index]
  resources :surveys, only: %i[create] do
    collection do
      get 'newsletter/:code', to: 'surveys#newsletter', as: 'newsletter'
    end
  end
end
