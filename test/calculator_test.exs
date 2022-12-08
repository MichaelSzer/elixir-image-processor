defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  describe "calculator sum less 1" do
    test " with 80 and 20" do
      assert Calculator.calculate_sum_less_1(80, 20) == 99
    end

    test "with 45 and -20" do
      assert Calculator.calculate_sum_less_1(45, -20) == 24
    end

    test "with 0 and 0" do
      assert Calculator.calculate_sum_less_1(0, 0) == -1
    end
  end
end
