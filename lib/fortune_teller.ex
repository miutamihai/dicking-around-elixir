defmodule FortuneTeller do
  defp secret_of_life() do
    time = DateTime.utc_now()
      |> DateTime.to_time()

    if rem(time.second, 2) === 0 do
      "God is dead"
    else
      "There's no secret"
    end
  end

  def show_secret_of_life(), do: IO.puts secret_of_life()
end

FortuneTeller.show_secret_of_life()
