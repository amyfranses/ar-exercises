require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee <  ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store_id, numericality: {only_integer: true}
end

class Store <  ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :validate_apparel_type
  def validate_apparel_type
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "You cannot create a store without men's or women's apparel")
  end
end
  
end

puts "Please add a store"
store_name = gets.chomp

store = Store.create(name: store_name)
p store.errors.full_messages