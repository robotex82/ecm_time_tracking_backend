module Ecm
  module TimeTracking
    module Backend
      class EntriesController < Itsf::Backend::Resource::BaseController
        def self.resource_class
          Ecm::TimeTracking::Entry
        end

        private

        def current_tracker_id
          proc = Configuration.current_tracker_id_proc
          instance_exec &proc
        end

        def load_scope
          resource_class.where(tracker_id: current_tracker_id)
        end

        def collection_scope
          resource_class.where(tracker_id: current_tracker_id)
        end

        def permitted_params
          p = params.dup; p[:entry][:tracker_id] = current_user.id
          p.require(:entry).permit(:begin_at, :end_at, :tracker_id, :break_length_in_minutes, :entry_type_id)
        end
      end
    end
  end
end
