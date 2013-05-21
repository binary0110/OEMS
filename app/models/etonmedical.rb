class Etonmedical < ActiveRecord::Base
  has_many :etonmedicalimgs
  belongs_to :committee
  default_scope order: 'date desc'
  validates :date, :presence => true
  validates :committee_id, :presence => true
end
