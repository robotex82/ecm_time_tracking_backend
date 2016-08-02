require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module TimeTracking
    module Backend
      module Configuration
        def configure
          yield self
        end

        mattr_accessor :registered_controllers do
          -> { [] }
        end

        mattr_accessor :registered_services do
          -> { [] }
        end

        mattr_accessor :current_tracker_id_proc do
          -> { current_user.try(:id) }
        end
      end
    end
  end
end
