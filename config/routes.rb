Ecm::TimeTracking::Backend::Engine.routes.draw do
  resources :entry_types
  resources :entries
  resources :tracker_calculation_schemas

  root to: 'home#index'
end
