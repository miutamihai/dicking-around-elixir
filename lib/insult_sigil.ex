# Usage: ~i/Mihai/ -> "Fuck you Mihai"

defmodule InsultSigil do
  def sigil_i(name, []), do: ~s(Fuck you #{name})
end
