Rails.application.routes.draw do
  namespace :v1 do
    get 'send', to: 'email#send'
  end
end
