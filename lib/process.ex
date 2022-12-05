defmodule Messages do

  @doc """
  Wait for messages from other processes.
  """
  @spec wait_for_message :: nil
  def wait_for_message do
    receive do
      msg -> msg |> IO.puts
    after
      3_000 -> "waiting for message..."
    end

    wait_for_message()
  end

  @doc """
  Send recurrent message to a process.
  """
  @spec send_message_periodically(pid(), integer()) :: nil
  def send_message_periodically(receiver_pid, period) do
    :timer.sleep(period)
    send(receiver_pid, period)
    send_message_periodically(receiver_pid, period)
  end
end
