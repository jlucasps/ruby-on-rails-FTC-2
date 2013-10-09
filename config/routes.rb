FirstApp::Application.routes.draw do
  
  devise_for :users
  
  root 'welcome#index', as: :index

  get '/black', to: 'welcome#black', as: :black

  get '/about', to: 'welcome#about', as: :about

  resources :users do
    resources :bills
  end
  
end