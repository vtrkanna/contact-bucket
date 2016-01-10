class CommunicationDetails < ActiveRecord::Migration
  def change
    create_table(:communication_details) do |t|
      t.integer :contact_id, null: false
      t.integer :phone, unique: true
      t.string :communication_type, default: "Mobile"
      t.boolean :active, default: false
      t.boolean :primary, default: false
      t.string :field_name, default: ""
      t.string :field_value, unique: true
      t.integer :sequence, default: 0
      t.datetime :created_by
      t.datetime :updated_by
      t.timestamps null: false
    end
  end
end
