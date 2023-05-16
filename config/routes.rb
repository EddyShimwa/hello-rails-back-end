Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root 'messages#index'
  namespace :api do
    namespace :v1 do
      get 'messages/index', to: 'messages#index'
    end
  end
end