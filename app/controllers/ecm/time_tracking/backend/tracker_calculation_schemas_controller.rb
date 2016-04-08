module Ecm
  module TimeTracking
    module Backend
      class TrackerCalculationSchemasController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::TimeTracking::TrackerCalculationSchema
        end

        private

        def permitted_params
          params.require(:tracker_calculation_schema).permit(:tracker_id, :identifier, :enabled_from, :enabled_to)
        end
      end
    end
  end
end
