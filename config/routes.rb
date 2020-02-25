Rails.application.routes.draw do
  devise_for :views
get 'comments/index'
root :to =>'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'top' =>'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users
resources :book,only:[:new,:create,:index,:show]
end
