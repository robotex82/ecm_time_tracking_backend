Ecm::TimeTracking::Backend::Engine.routes.draw do
  resources :entry_types
  resources :entries

  root to: 'home#index'
end