Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'messages/random', to: 'messages#random'
    end
  end
  
end