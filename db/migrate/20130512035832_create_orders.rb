class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :start_loc
      t.string :end_loc
      t.integer :price
      t.boolean :is_done



      t.timestamps
    end
  end
end
