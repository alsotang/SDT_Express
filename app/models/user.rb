class User < ActiveRecord::Base
  attr_accessible :email, :password, :telephone, :true_name

  has_and_belongs_to_many :orders
end
