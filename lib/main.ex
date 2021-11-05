:Mihai

IO.puts "Hello #{:Mihai}"

_collection = [3.14, :pie, "Apple"]

_collection = _collection ++ [:Mihai]

person = %{firstName: "Mihai", lastName: "Miuta"}

IO.puts person.firstName

greeting = "Hello"

greet = fn
  (^greeting, name) -> "Hi #{name}"
  (greeting, name) -> "#{greeting}, #{name}"
end

IO.puts greet.("Hello", "Mihai")

greet.("Mornin'", "Mihai") |> IO.puts

handle_result = fn
  {:ok, result} -> IO.puts "Am Okay"
  {:error, error} -> IO.puts "Failed because #{error}"
end

handle_result.({:ok, 3})

handle_result.({:error, "I said so"})

defmodule Greeter do
  def hello(name) do
    greeting = "Hail, oh lord and saviour #{name}"

    greeting
  end

  def short_hello(name), do: "Hello, #{name}"
end

IO.puts Greeter.hello("Mihai")
IO.puts Greeter.short_hello("Mihai")

mihai_checker = fn
  :mihai -> IO.puts "Hello Mihai"
  "mihai" -> IO.puts "Hello Mihai"
  "Mihai" -> IO.puts "Hello Mihai"
  _ -> IO.puts "Hello entity that's not Mihai"
end

mihai_checker.(:mihai)
mihai_checker.("Mihai")
mihai_checker.("cat")

defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

IO.puts Length.of [1, 2, 3]

defmodule PersonChecker do
  def salute(%{job: job}), do: IO.puts "Hello, person of profession #{job}"

  def salute(%{name: name}), do: IO.puts "Hello, person named #{name}"
end

PersonChecker.salute(%{job: "Programmer"})
PersonChecker.salute(%{name: "Mihai"})

defmodule GeniusInspector do
  def salute(%{name: name} = person) do
    if name === "Mihai" do
      IO.puts "Greetings, lord #{name}"
      IO.inspect person
    else
      IO.puts "Begone, not-a-genius-person!"
    end
  end
end

GeniusInspector.salute(%{name: "Mihai"})
GeniusInspector.salute(%{name: "Codrut"})
