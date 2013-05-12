class Committee < ActiveRecord::Base
  has_many :eventitems
  has_many :newsitems
  default_scope order: 'priority asc'
end
