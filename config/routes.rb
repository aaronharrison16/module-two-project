Rails.application.routes.draw do
  resources :guides
  
  root to: 'static#homepage'
end
