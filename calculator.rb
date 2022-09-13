require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# driver code

# calculator = Calculator.new

# p "testing the add method"
# if calculator.add(3, 6) == 9
#   p "it works!"
# else
#   p "it doesn't work"
# end

# rspec

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(4, 8)
      expect(result).to eq(12)
    end
    it "should return the sum of two negative numbers" do
      calculator = Calculator.new
      result = calculator.add(-4, -3)
      expect(result).to eq(-7)
    end
  end
  describe "#subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(11, 3)
      expect(result).to eq(8)
    end
    it "should return the difference of two negative numbers" do
      calculator = Calculator.new
      result = calculator.subtract(-5, -6)
      expect(result).to eq(1)
    end
  end
  describe "#multiply" do
    it "should return the product of two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(3, 4)
      expect(result).to eq(12)
    end
  end
  describe "#divide" do
    it "should return the quotient of two numbers" do
      calculator = Calculator.new
      result = calculator.divide(10, 2)
      expect(result).to eq(5)
    end
  end
  describe "#square" do
    it "should return the square of a number" do
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end
  end
  describe "#power" do
    it "should return the power of a number" do
      calculator = Calculator.new
      result = calculator.power(2, 3)
      expect(result).to eq(8)
    end
  end
end
