defmodule Beh do
  @doc """
  Returns a greeting message to the caller.
  """
  @callback greetings() :: String.t()
end

defmodule ImpBeh do
  @behaviour Beh

  @impl true
  def greetings(), do: "Hello sir."
end
