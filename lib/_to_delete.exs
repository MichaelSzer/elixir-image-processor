defmodule Call do
  def this(), do: IO.puts("this")
  def that(), do: IO.puts("that")
end

defmodule Example do
  def fun(keywords), do: :ok
end

IO.puts(
  Example.fun(
    do: Call.this(),
    else: Call.that()
  )
)

dbg(
  if(
    true,
    do: Call.this(),
    else: Call.that()
  )
)
