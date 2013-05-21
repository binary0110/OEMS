class Newsitemimg < ActiveRecord::Base
  belongs_to :newsitem
  default_scope order: 'position asc'
  validates :imglink, :presence => true
  validates :thumblink, :presence => true
  validates :caption, :presence => true
end
