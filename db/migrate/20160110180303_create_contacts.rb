class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id, null: false
      t.string :first_name, null: false
      t.string :last_name
      t.string :email, null: false, unique: true
      t.datetime :created_by
      t.datetime :updated_by
      t.boolean :active, default: false
      t.integer :sequence, default: 0
      t.timestamps null: false
    end
  end
end
