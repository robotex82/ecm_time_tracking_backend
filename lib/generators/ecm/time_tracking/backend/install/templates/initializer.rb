Ecm::TimeTracking::Backend.configure do |config|
  # Set the resources, that will be shown in the backend menu.
  #
  # Default: config.registered_controllers = -> {[
  #            Ecm::TimeTracking::Backend::EntryTypesController,
  #            Ecm::TimeTracking::Backend::EntriesController
  #          ]}
  #
  config.registered_controllers = lambda {
    [
      Ecm::TimeTracking::Backend::EntryTypesController,
      Ecm::TimeTracking::Backend::EntriesController
    ]
  }

  # Set the services, that will be shown in the backend menu.
  #
  # Default: config.registered_services = -> {[
  #          ]}
  #
  config.registered_services = lambda {
    [
    ]
  }
end
