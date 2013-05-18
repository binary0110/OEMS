class Etonmedical < ActiveRecord::Base
  has_many :etonmedicalimgs
  belongs_to :committee
  default_scope order: 'date desc'
end
