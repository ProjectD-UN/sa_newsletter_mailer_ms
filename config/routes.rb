Rails.application.routes.draw do
  resources :newsletter_topics
  resources :newsletters
  resources :user_topics
  resources :topics
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
