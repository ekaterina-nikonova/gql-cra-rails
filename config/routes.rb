Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy

  resources :todos

  mount ActionCable.server, at: '/cable'
end
