class Committee < ActiveRecord::Base
  has_many :eventitems
  has_many :newsitems
end
