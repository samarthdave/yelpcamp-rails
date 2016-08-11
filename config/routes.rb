Rails.application.routes.draw do
  
  get 'users/show'

  resources :campgrounds, except: [:new, :edit] do
    resources :comments, only: [:new, :create]
  end
  
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "signup" }
  
  get 'new/campground', to: 'campgrounds#new'
  
  get 'edit/campground/:id', to: 'campgrounds#edit', as: 'edit_campground'
  
  get 'users/:id', to: 'users#show', as: 'user'
  
  root 'welcome#index'
  
end