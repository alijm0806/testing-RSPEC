# create a method that will take a number of cents and return an array of coins that will be your change. The goal is to return as few coins as possible. Assume that the highest denomination of coins will be a quarter (25 cents).
# 40 => [25, 10, 5]
require "rspec"

class ChangeMachine
  def change(cents)
    wallet = []
    denominations = [25, 10, 5, 1]
    denominations.each do |denomination|
      while cents >= denomination
        wallet << denomination
        cents -= denomination
      end
    end

    # while cents >= 25
    #   wallet << 25
    #   cents -= 25
    # end
    # while cents >= 10
    #   wallet << 10
    #   cents -= 10
    # end
    # while cents >= 5
    #   wallet << 5
    #   cents -= 5
    # end
    # while cents >= 1
    #   wallet << 1
    #   cents -= 1
    # end
    return wallet
  end
end

RSpec.describe ChangeMachine do
  describe "#change" do
    it "should return [1] when given 1" do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it "should return [1,1] when given 2" do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end
    it "should return [5,1] when given 6" do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end
    it "should return [10,5,1,1,1] when given 18" do
      machine = ChangeMachine.new
      expect(machine.change(18)).to eq([10, 5, 1, 1, 1])
    end
    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119" do
      machine = ChangeMachine.new
      expect(machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
