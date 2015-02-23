Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'blog', to: 'welcome#blog'
  resources :returns
  resources :contact_forms, only: [:create, :new]

end
