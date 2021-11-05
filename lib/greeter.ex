defmodule Greeter do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    "#{phrase()} #{name}"
  end

  defp phrase, do: "Hello, "
end

IO.puts Greeter.hello ["Mihai", "Codrut"]
IO.puts Greeter.hello "Mihai"
