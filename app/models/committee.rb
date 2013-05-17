class Committee < ActiveRecord::Base
  has_many :eventitems
  has_many :newsitems
  has_many :etonmedicals
  default_scope order: 'priority asc'
end
