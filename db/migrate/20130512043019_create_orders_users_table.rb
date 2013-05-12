class CreateOrdersUsersTable < ActiveRecord::Migration
  def up
    create_table :orders_users, id: false do |t|
      t.references :order
      t.references :user
    end

    add_index :orders_users, [:order_id, :user_id]
    add_index :orders_users, [:user_id, :order_id]
  end

  def down
    drop_table :orders_users
  end
end
