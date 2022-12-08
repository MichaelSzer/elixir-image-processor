defmodule Calculator do
  @spec calculate_sum_less_1(integer(), integer()) :: integer()
  def calculate_sum_less_1(number_a, number_b), do: number_a + number_b - 1

  @spec calculate_square(integer()) :: integer()
  def calculate_square(number), do: number * number

  @spec calculate_multiplication_list([integer()]) :: integer()
  def calculate_multiplication_list(numbers), do: numbers |> Enum.reduce(&(&1 * &2))
end
