Rails.application.routes.draw do
  resources :houses do
    resources :characters
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
