# config/initializers/time_formats.rb
Date::DATE_FORMATS[:oems_standard] = lambda { |date| date.strftime("#{date.day.ordinalize} %B %Y") }