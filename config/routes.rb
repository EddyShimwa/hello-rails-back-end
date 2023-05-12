Rails.application.routes.draw do
  root 'messages#index'
  namespace :api do
    namespace :v1 do
      get 'messages/index', to: 'messages#index'
    end
  end
end