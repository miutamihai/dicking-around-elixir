defmodule SuperDooperGreeter do
  defp phrase(:en), do: "Hello"

  defp phrase(:es), do: "Hola"

  defp phrase(:ro), do: "Salut"

  def hello(names, language \\ :en)

  def hello(name, language) when is_binary(name) do
    "#{phrase(language)}, #{name}"
  end

  def hello(names, language) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language)
  end
end

IO.puts SuperDooperGreeter.hello("Mihai")
IO.puts SuperDooperGreeter.hello(["Mihai", "Maria"])
IO.puts SuperDooperGreeter.hello(["Mihai", "Maria"], :es)
IO.puts SuperDooperGreeter.hello(["Mihai", "Maria"], :ro)
