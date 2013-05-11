class NewsItem < ActiveRecord::Base
  attr_accessible :content, :title

  default_scope order('created_at DESC')
end
