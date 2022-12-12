defmodule Weather do
  # define structure
end

defmodule WeatherService do
  use GenServer#, id: ..., restart: ..., shutdown: ...

  # Client



  # Server

  @impl true
  def init(initial_weather) do
    {:ok, initial_weather}
  end

  @impl true
  def handle_call(:add, _from, %{ location: location, temperature: temperature }) do
    {:reply, location, temperature}
  end

  @impl true
  def handle_cast({:get_weather}, state) do
    {:noreply, state}
  end
end
