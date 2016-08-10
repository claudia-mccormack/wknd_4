# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

module FancyCalculator
  def initialize(numbers)
    super(numbers)
    @third_number = numbers[:third_number]
  end

    def square_root
      Math.sqrt(@third_number)
    end

end

class WhizBangCalculator
include SimpleCalculator
include FancyCalculator

  def initialize(numbers)
    super(numbers)
    @exponent_number = numbers[:exponent_number]
  end

  def hypotenuse
    Math.hypot(@first_number, @second_number)
  end

  def exponent
    @total = 1
    @exponent_number.times { total = multiply(@total,@first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:

calc = WhizBangCalculator.new(
  first_number: 6,
  second_number: 2,
  third_number: 12,
  exponent_number: 3
)

puts "6 + 2 = #{calc.add.to_s}"
puts "6 - 2 = #{calc.subtract.to_s}"
puts "6 x 2 = #{calc.multiply.to_s}"
puts "6 / 2 = #{calc.divide.to_s}"
puts "The square root of 12 is #{calc.square_root.to_s}"
puts "6^3 = #{calc.exponent}"
