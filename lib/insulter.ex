defmodule Insulter do
  @insult ~s(Fuck you)

  def insult(name), do: ~s(#{@insult} #{name})
end
