class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :vehicle_type
      t.string :current_loc
      t.boolean :vehicle_status

      t.timestamps
    end
  end
end
