defmodule ImageProcessor do
  @moduledoc """
  Documentation for `ImageProcessor`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ImageProcessor.hello()
      :world

  """
  def make_image_more_red() do
    image_filename = "tea-coffee-cup.png"
    image_filename
  end

  def edit_image() do
    # Prompt edit options

    IO.puts("Chose an edit option: \n 1. Make the whole image more red.\n 2. Make image black and white.\n")

    option = IO.gets("Option number? ") |> String.trim_trailing("\n") |> String.to_integer()

    case option do
      1 ->
        "Image more red"
      2 ->
        "Image black and white"
      _ ->
        IO.puts("Invalid option, please pick a select a number from the list. \n")
        edit_image()
    end
  end
end
