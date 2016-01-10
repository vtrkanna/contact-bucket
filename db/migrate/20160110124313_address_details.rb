class AddressDetails < ActiveRecord::Migration
  def change
    create_table(:address_details) do |t|
      t.integer :user_id, null: false
      t.string :address_type, default: "Home"
      t.boolean :active, default: false
      t.boolean :primary, default: false
      t.string :field_name, default: ""
      t.string :field_value, default: ""
      t.string :addr1, default: ""
      t.string :addr2, default: ""
      t.integer :city_id
      t.integer :country_id
      t.integer :sequence, default: 0
      t.datetime :created_by
      t.datetime :updated_by
      t.timestamps null: false
    end
  end
end