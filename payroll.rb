class Employee
	attr_reader :name, :email
	def initialize(name, email)
		@name = name
		@email = email
	end
end

class HourlyEmployee < Employee
	def initialize(name, email, hourly_rate, hours_worked)
		@name = name
		@email = email
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calulate_salary
		@hourly_rate * @hours_worked
	end
end

class SalariedEmployee < Employee
	def initialize(name, email, yearly_rate)
		@name = name
		@email = email
		@yearly_rate = yearly_rate
	end

	def calculate_salary
		@yearly_rate
	end
end

class MultiPaymentEmployee < SalariedEmployee
	def initialize(name, email, yearly_rate, hourly_rate, hours_worked)
		@name = name
		@email = email
		@yearly_rate = yearly_rate
		@hours_worked = hours_worked
		@hourly_rate = hourly_rate
	end

	def calculate_salary
		if @hours_worked >= 40
			(@hours_worked - 40) * @hourly_rate
		end

	end
end

class Payroll 
	def initialize(employees)
		@employees = employees
	end

	def notify_employee(employee)
		@email
	end

	def pay_employees
		



		total=0
		@employees.each do | employee |
			total += employee.calulate_salary 
		end
		puts "The total payroll is : #{total}."
	end

end


# example of multipayment and salaried employees
# _________________________________________________
# mark = HourlyEmployee.new("Mark", "markymark@gmail.com", 45, 100)
# kevin = HourlyEmployee.new("Kevin", "homealone@gmail.com", 60, 150)
# batman = SalariedEmployee.new("Bruce", "Bats@gmail.com", 100000)
# green_lantern = MultiPaymentEmployee.new("Hal", "Lantern@gmail.com", 120000, 275, 60)


nizar = HourlyEmployee.new("Nizar", "markymark@gmail.com", 45, 100)
josh = HourlyEmployee.new("Josh", "homealone@gmail.com", 60, 150)
adam = HourlyEmployee.new("Adam", "Addd@gmail.com", 15, 90)
jake = HourlyEmployee.new("Jake", "Jake@gmail.com", 15, 85)

# employees = [mark, kevin, batman, green_lantern]
employees = [nizar, josh, adam, jake]



my_payroll = Payroll.new(employees)

my_payroll.pay_employees

# puts mark.calulate_salary
# puts kevin.calulate_salary
# puts batman.yearly_salary
# puts green_lantern.multi_payment_ot
# puts green_lantern.yearly_salary
