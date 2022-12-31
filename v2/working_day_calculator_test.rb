require_relative './working_day_calculator'

calc = WorkingDayCalculator.new
period_start = Date.new(2023, 1, 1)
period_end = Date.new(2023, 1, 31)
days_off = [Date.new(2023, 1, 1), Date.new(2023, 1, 29)..Date.new(2023, 1, 30)]

# correct! prints "28"
puts calc.calculate_working_days(period_start..period_end, days_off)

# type error, arg 1 must be a range of dates
calc.calculate_working_days([], days_off)

# type error, arg 2 must be an array composed of dates and / or ranges of dates
calc.calculate_working_days(period_start..period_end, Date.new(2023, 1, 1))

# type error, arg 2 must be an array composed of only dates and / or ranges of dates
calc.calculate_working_days(period_start..period_end, [
  Date.new(2023, 1, 1),
  '2023-01-15',
  Date.new(2023, 1, 29)..Date.new(2023, 1, 30)])
