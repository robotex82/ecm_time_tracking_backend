Ecm::TimeTracking::Backend::Engine.routes.draw do
  resources :entries

  root to: 'home#index'
end