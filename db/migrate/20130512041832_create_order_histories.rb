class CreateOrderHistories < ActiveRecord::Migration
  def change
    create_table :order_histories do |t|
      t.string :where_is
      t.timestamp :time_point

      t.references :order

      t.timestamps
    end
  end
end
