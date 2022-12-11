require 'date'

class WorkingDayCalculator
  attr_accessor :period_start, :period_end
  attr_reader :days_off

  def initialize
    @days_off = []
  end

  def add_day_off(date)
    @days_off << date
  end

  def calculate_working_days
    ((period_start..period_end).to_a - days_off).length
  end
end
