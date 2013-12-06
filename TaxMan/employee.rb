
class Employee
  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate
  def initialize(attributes)
    @first_name = attributes.fetch('first_name') { 'missing' }
    @last_name = attributes.fetch('last_name') {'missing'}
    @annual_income = attributes.fetch('annual_income') {0}
    @tax_paid = attributes.fetch('tax_paid') {0}
    @tax_rate = attributes.fetch('tax_rate') {0}
  end

  def self.load_data(file)
    employees = []
    CSV.foreach(file, :headers => true) do |row|
      employee = Employee.new(row.to_hash)
      employees << employee
    end
    employees
  end
end


