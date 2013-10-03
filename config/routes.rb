FirstApp::Application.routes.draw do
  
  root 'welcome#index', as: :index

  get '/black', to: 'welcome#black', as: :black

end