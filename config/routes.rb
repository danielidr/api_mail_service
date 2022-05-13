Rails.application.routes.draw do
  namespace :v1 do
    get 'all', to: 'email#index'
    get 'send', to: 'email#send'
  end
end
