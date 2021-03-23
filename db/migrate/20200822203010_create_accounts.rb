class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.references :organization, null: false, foreign_key: true, type: :uuid
    end
  end
end
