module Api
  module V1
    class EventsController < ApplicationController
      def create
        render json: serializer(event)
      end

      private

      def event
        EventProcess.new(
          event_params.to_h.symbolize_keys.merge(
            calendar: calendar,
            event_types: event_types
          )
        ).submitted
      end

      def calendar
        Calendar.find(params[:calendar_id])
      end

      def event_types
        []
      end

      def serializer(serializable)
        EventSerializer.new(serializable).serializable_hash.to_json
      end

      def event_params
        params.require(:event).permit!
      end
    end
  end
end
