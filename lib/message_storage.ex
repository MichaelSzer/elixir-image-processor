defmodule MessageStore do
  @spec start :: {:ok, pid()}
  def start do
    Task.start_link(fn -> wait_for_orders(%{}) end)
  end

  defp wait_for_orders(all_messages) do
    receive do
      {:get, person, sender} ->
        send(sender, Map.get(all_messages, person, []))
        wait_for_orders(all_messages)

      {:put, msg, person} ->
        Map.put(all_messages, person, Map.get(all_messages, person, []) ++ [msg])
        |> wait_for_orders()
    end
  end
end
