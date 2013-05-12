class Eventitem < ActiveRecord::Base
  belongs_to :committee
  default_scope order: 'date desc'
end
