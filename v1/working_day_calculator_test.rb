require_relative './working_day_calculator'

calc = WorkingDayCalculator.new
calc.period_start = Date.new(2023, 1, 1)
calc.period_end = Date.new(2023, 1, 31)
calc.add_day_off(Date.new(2023, 1, 1))

puts calc.calculate_working_days # Expected: 30
