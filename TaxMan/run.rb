require 'csv'
require 'pry'
require_relative 'employee'

file = 'employee.csv'
employees = Employee.load_data(file)