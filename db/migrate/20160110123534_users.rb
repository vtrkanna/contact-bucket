class Users < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.boolean :active, default: false
      t.integer :address_detail_id
      t.integer :communication_detail_id
      t.integer :role_id
      t.datetime :created_by
      t.datetime :updated_by
      t.timestamps null: false
    end
  end
end
