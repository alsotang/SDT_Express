class Order < ActiveRecord::Base
  attr_accessible :end_loc, :is_done, :price, :start_loc, :order_histories_attributes

  default_scope order('created_at DESC')

  has_many :order_histories
  has_and_belongs_to_many :users

  accepts_nested_attributes_for :order_histories, allow_destroy: true,
    reject_if: :all_blank
end
