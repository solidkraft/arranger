class CalendarEventType < ApplicationRecord
  belongs_to :calendar
  belongs_to :event_type
end
