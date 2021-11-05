defmodule DickingAroundTest do
  use ExUnit.Case
  doctest DickingAround

  test "greets the world" do
    assert DickingAround.hello() == :world
  end
end
