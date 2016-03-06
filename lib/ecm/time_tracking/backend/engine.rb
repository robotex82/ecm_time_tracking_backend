module Ecm
  module TimeTracking
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::TimeTracking::Backend
      end
    end
  end
end
