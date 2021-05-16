Rails.application.routes.draw do
  get 'home/index'
  resources :questions
  root 'home#index'
  get 'home/thanks/:value', to: 'home#thanks', as: 'thanks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
