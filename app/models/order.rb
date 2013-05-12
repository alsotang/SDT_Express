class Order < ActiveRecord::Base
  attr_accessible :end_loc, :is_done, :price, :start_loc

  has_many :order_histories
  has_and_belongs_to_many :users
end
