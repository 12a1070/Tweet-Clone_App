Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
  get '/stocks', to: 'stocks#index'
  end
    end
end
