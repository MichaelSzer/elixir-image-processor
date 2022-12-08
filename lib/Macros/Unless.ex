defmodule Unless do
  def fun_unless(clause, do: expression, else: second_expression) do
    if(!clause, do: expression, else: second_expression)
  end

  defmacro macro_unless(clause, do: expression) do
    quote do
      if(!unquote(clause), do: unquote(expression))
    end
  end
end
