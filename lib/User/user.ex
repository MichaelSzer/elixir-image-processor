defmodule User do
  @derive [Privilege]
  defstruct [:username, :prestige]
end
