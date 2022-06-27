require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Liam", last_name: "Jakes", hourly_rate: 50)
@store2.employees.create(first_name: "Jack", last_name: "Times", hourly_rate: 50)
@store2.employees.create(first_name: "Jo", last_name: "Jones", hourly_rate: 80)
@store4.employees.create(first_name: "Bill", last_name: "Smith", hourly_rate: 90)
@store4.employees.create(first_name: "Cass", last_name: "Reed", hourly_rate: 40)
@store4.employees.create(first_name: "Lee", last_name: "Lile", hourly_rate: 60)
@store5.employees.create(first_name: "Rose", last_name: "Martin", hourly_rate: 70)
@store5.employees.create(first_name: "Leo", last_name: "Tate", hourly_rate: 50)

puts Employee.count