require_relative './working_day_calculator'

calc = WorkingDayCalculator.new
calc.period_start = Date.new(2023, 1, 1)
calc.period_end = Date.new(2023, 1, 31)

# calc.add_day_off(Date.new(2023, 1, 1)) # original, correct usage of #add_day_off
calc.add_day_off('BOOM') # incorrectly passing a String to #add_day_off

puts calc.calculate_working_days # Expected: 30
