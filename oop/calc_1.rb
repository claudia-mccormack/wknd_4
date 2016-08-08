# Below, we have two types of calculators. The simple one can perform basic arithmetic,
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is
# a fundamental concept in OOP known as Inheritance. Your exercise is to research
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code
# below. You must also write the driver code to test your classes.

class SimpleCalculator
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
#
end

class FancyCalculator < SimpleCalculator
def initialize(numbers)
  super(numbers)
  @third_number = numbers[:third_number]
end

  def square_root
    Math.sqrt(@third_number)
  end

end

# Write your own driver code below:

calc = FancyCalculator.new(first_number: 6, second_number: 2, third_number: 12)

puts "6 + 2 = #{calc.add.to_s}"
puts "6 - 2 = #{calc.subtract.to_s}"
puts "6 x 2 = #{calc.multiply.to_s}"
puts "6 / 2 = #{calc.divide.to_s}"
puts "The square root of 12 is #{calc.square_root.to_s}"
