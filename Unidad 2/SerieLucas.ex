# ejercicio para hallar una pocision de la serie de lucas
defmodule SerieLucas do
  def lucas(0), do: 2
  def lucas(1), do: 1
  def lucas(n) when n > 1, do: lucas(n - 1) + lucas(n - 2)

end
IO.puts(SerieLucas.lucas(5))
