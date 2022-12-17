require_relative './working_day_calculator'

calc = WorkingDayCalculator.new
period_start = Date.new(2023, 1, 1)
period_end = Date.new(2023, 1, 31)
days_off = [Date.new(2023, 1, 1), Date.new(2023, 1, 29)..Date.new(2023, 1, 30)]

puts calc.calculate_working_days(period_start..period_end, days_off) # Expected: 28
