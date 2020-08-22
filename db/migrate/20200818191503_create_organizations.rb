class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name, null: false
      t.jsonb :info, null: false, default: {}
      t.jsonb :location, null: false, default: {}
    end

    add_index  :organizations, :location, using: :gin
  end
end
