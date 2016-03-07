module Ecm
  module TimeTracking
    module Backend
      class EntriesController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::TimeTracking::Entry
        end

        private

        def permitted_params
          p = params.dup; p[:entry][:tracker_id] = current_user.id
          p.require(:entry).permit(:begin_at, :end_at, :tracker_id, :break_length_in_minutes, :entry_type_id)
        end
      end
    end
  end
end
