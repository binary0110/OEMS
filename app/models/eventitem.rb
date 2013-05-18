class Eventitem < ActiveRecord::Base
  has_many :eventitemimgs
  belongs_to :committee
  default_scope order: 'date desc'
end
