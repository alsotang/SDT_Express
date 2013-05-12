class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :true_name
      t.string :telephone

      t.timestamps
    end
  end
end
