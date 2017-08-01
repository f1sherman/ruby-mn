require "ruby/mn/version"
require 'date'

module Ruby
  module Mn
    def self.next_meetup(current_date)
      last_monday_of_this_month = last_monday_of_the_month current_date
      return last_monday_of_this_month if last_monday_of_this_month > current_date

      last_monday_of_the_month Date.new current_date.year, current_date.month + 1, 1
    end

    def self.last_monday_of_the_month(current_date)
      last_day_of_the_month = Date.new current_date.year, current_date.month, -1
      difference = last_day_of_the_month.wday - 1 # Monday is weekday #1
      Date.new last_day_of_the_month.year, last_day_of_the_month.month, last_day_of_the_month.mday - difference
    end
  end
end
