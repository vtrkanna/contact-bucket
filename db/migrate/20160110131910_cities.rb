class Cities < ActiveRecord::Migration
  def change
    create_table(:cities) do |t|
      t.string :name, null: false, unique: true
      t.boolean :active, default: false
      t.datetime :created_by
      t.datetime :updated_by
      t.timestamps null: false
    end
  end
end
