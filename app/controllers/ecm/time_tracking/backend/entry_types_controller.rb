module Ecm
  module TimeTracking
    module Backend
      class EntryTypesController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::TimeTracking::EntryType
        end

        private

        def permitted_params
          params.require(:entry_type).permit(:identifier, :due_in_minutes)
        end
      end
    end
  end
end
