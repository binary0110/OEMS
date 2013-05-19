class Eventitemimg < ActiveRecord::Base
  belongs_to :eventitem
  default_scope order: 'position asc'
end
