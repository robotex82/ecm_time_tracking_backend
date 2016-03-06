Ecm::TimeTracking::Backend.configure do |config|  
  # Set the resources, that will be shown in the backend menu.
  # 
  # Default: config.registered_controllers = -> {[
  #            Ecm::TimeTracking::Backend::Entriesontroller
  # ]}
  # 
  config.registered_controllers = -> {[
    Ecm::TimeTracking::Backend::EntriesController
  ]}

  # Set the services, that will be shown in the backend menu.
  #
  # Default: config.registered_services = -> {[
  #          ]}
  # 
  config.registered_services = -> {[
  ]}
end