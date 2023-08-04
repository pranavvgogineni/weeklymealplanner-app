Rails.application.routes.draw do
  resources :recipes
  resources :weeks
  resources :weeklymeals
end
