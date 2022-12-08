defmodule Hygiene do
  defmacro interference do
    quote do: a = 1
  end
end

defmodule HygieneTest do
  defmacro interference do
    quote do: a = 1
  end

  def go do
    require Hygiene
    a = 13
    interference()
    a
  end
end
