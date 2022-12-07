defmodule MyRange do
  @enforce_keys [:first, :last, :step]
  defstruct [:first, :last, :step]

  @spec new(integer(), integer(), integer()) :: %MyRange{
          first: integer(),
          last: integer(),
          step: integer()
        }
  def new(first, last, step \\ 1) do
    %MyRange{first: first, last: last, step: step}
  end
end

# Implementation of the Enum protocol.
