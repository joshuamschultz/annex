Rails.application.routes.draw do
  get 'reports/usage'
  get 'reports/inventory'
  get 'reports/annex24'
  root to: "imports#index"
  resources :exports
  resources :export_types
  resources :imports
  resources :import_types
  resources :orders
  resources :parts
  resources :suppliers
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
