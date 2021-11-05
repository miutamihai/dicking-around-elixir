defmodule DickingAround do
  @moduledoc """
  Documentation for `DickingAround`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> DickingAround.hello()
      :world

  """

  import Insulter

  def hello do
    IO.puts insult("Mihai")
  end
end
