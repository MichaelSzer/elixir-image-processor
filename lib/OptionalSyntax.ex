defmodule OptionalSyntax do
  @spec three_way_if(integer(), keyword(function())) :: nil
  def three_way_if(option, clauses) do
    if not (:first in clauses and :second in clauses and :third in clauses) do
      raise "missing clauses"
    else
      # each clause must be an anonymous function
      case rem(option, 3) do
        0 ->
          clauses[:first].()
        1 ->
          clauses[:second].()
        2 ->
          clauses[:third].()
      end
    end
  end
end
