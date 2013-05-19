class Newsitemimg < ActiveRecord::Base
  belongs_to :newsitem
  default_scope order: 'position asc'
end
