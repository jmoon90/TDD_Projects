require 'csv'
require 'pry'
require_relative 'employee'
require_relative 'tax_calculator'
require_relative 'liability'

file = 'employee.csv'
calculator = TaxCalculator.new(file)
calculator.calculate_liability
binding.pry
calculator.employee.each do |employee|
  
  "#{employee['first_name']} #{employee['last_name']}"
end

# 
