require "ruby/mn/version"
require 'date'

module Ruby
  module Mn
    def self.next_meetup
      last_day_of_next_month = Date.new Date.today.year, Date.today.month + 1, -1
      difference = last_day_of_next_month.wday - 1 # Monday is weekday #1
      Date.new last_day_of_next_month.year, last_day_of_next_month.month, last_day_of_next_month.mday - difference
    end
  end
end
