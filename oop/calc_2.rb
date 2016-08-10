# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  attr_accessor :first_number, :second_number
    def initialize(numbers)
      @first_number = numbers[:first_number]
      @second_number = numbers[:second_number]
    end

    def add
      @first_number + @second_number
    end

    def subtract
      @first_number - @second_number
    end

    def multiply
      @first_number * @second_number
    end

    def divide
      @first_number / @second_number
    end

end

class FancyCalculator

  include SimpleCalculator

  def initialize(numbers)
    super(numbers)
    @third_number = numbers[:third_number]
  end

    def square_root
      Math.sqrt(@third_number)
    end

end

# Copy your driver code from the previous exercise below:

calc = FancyCalculator.new(first_number: 6, second_number: 2, third_number: 12)

puts "6 + 2 = #{calc.add.to_s}"
puts "6 - 2 = #{calc.subtract.to_s}"
puts "6 x 2 = #{calc.multiply.to_s}"
puts "6 / 2 = #{calc.divide.to_s}"
puts "The square root of 12 is #{calc.square_root.to_s}"
