class Newsitem < ActiveRecord::Base
  has_many :newsitemimgs
  belongs_to :committee
  default_scope order: 'date desc'
end
