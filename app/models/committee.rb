class Committee < ActiveRecord::Base
  has_many :eventitems
  has_many :newsitems
  has_many :etonmedicals
  default_scope order: 'priority asc'
  validates :title, :presence => true
  validates :firstname, :presence => true
  validates :surname, :presence => true
  validates :position, :presence => true
  validates :priority, :presence => true
end
