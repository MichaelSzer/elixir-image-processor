defmodule Mix.Tasks.Greetings do
  @moduledoc "A tasks to fill your hearth after waking up."
  @shortdoc "A secret..."
  use Mix.Task

  @impl Mix.Task
  def run(_) do
    Mix.shell().info("Greetings Miguel.")
  end
end
