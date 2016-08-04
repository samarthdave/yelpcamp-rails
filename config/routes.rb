Rails.application.routes.draw do
  
  resources :campgrounds, except: [:new, :edit]
  
  get 'new/campground', to: 'campgrounds#new'
  
  get 'edit/campground/:id', to: 'campgrounds#edit', as: 'edit_campground'
  
  root 'welcome#index'
  
end