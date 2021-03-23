class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars, id: :uuid do |t|
      t.references :account, null: false, foreign_key: true, type: :uuid
    end
  end
end
