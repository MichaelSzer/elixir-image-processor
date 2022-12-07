defmodule ErrorHandling do
  def run_all_error_clauses() do
    {:ok, file} = File.open("./lib/ErrorHandling/error.txt", [:utf8, :write])

    try do
      IO.write(file, "File created before catastrophe")
      1 + :nine
    rescue
      _ ->
        IO.puts("Rescue clause.")
    else
      _ ->
        IO.puts("No errors in run_all_error_clauses()")
    catch
      :exit, _ ->
        IO.puts("I got you.")
    after
      File.close(file)
    end
  end
end
