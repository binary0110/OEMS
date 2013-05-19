class Etonmedicalimg < ActiveRecord::Base
  belongs_to :etonmedical
  default_scope order: 'position asc'
end
