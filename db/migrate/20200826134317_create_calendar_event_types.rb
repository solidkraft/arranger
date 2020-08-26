class CreateCalendarEventTypes < ActiveRecord::Migration[6.0]
  def change
    create_join_table :calendars, :event_types, table_name: :calendar_event_types, column_options: { type: :uuid } do |t|
      t.index :calendar_id
      t.index :event_type_id
    end
  end
end
