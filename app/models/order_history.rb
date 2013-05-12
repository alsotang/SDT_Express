class OrderHistory < ActiveRecord::Base
  attr_accessible :time_point, :where_is

  belongs_to :order
end
