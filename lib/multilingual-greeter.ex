defmodule MultilingualGreeter do
  defp phrase(:en), do: "Hello"

  defp phrase(:es), do: "Hola"

  defp phrase(:ro), do: "Salut"

  def hello(name, language \\ :en), do: "#{phrase(language)}, #{name}"
end

IO.puts MultilingualGreeter.hello("Mihai")
IO.puts MultilingualGreeter.hello("Mihai", :en)
IO.puts MultilingualGreeter.hello("Mihai", :es)
IO.puts MultilingualGreeter.hello("Mihai", :ro)
