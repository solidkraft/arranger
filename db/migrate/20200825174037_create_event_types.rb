class CreateEventTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :event_types, id: :uuid do |t|
      t.string :name, null: false
      t.text :description
      t.jsonb :type, null: false, default: {}
      t.references :organization, null: false, foreign_key: true, type: :uuid
    end

    add_index  :event_types, :type, using: :gin
  end
end
