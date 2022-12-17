require 'date'

class WorkingDayCalculator
  def calculate_working_days(period, days_off)
    flattened_days_off = days_off.map { |date| date.class == Range ? date.to_a : date }.flatten
    (period.to_a - flattened_days_off).length
  end
end
