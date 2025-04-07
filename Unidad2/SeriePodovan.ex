# ejercicio para hallar una posicion de la serie de podovan
defmodule SeriePodovan do
  def podovan(0), do: 1
  def podovan(1), do: 1
  def podovan(2), do: 1
  def podovan(n) when n > 2, do: podovan(n - 2) + podovan(n - 3)
end

IO.puts(SeriePodovan.podovan(6))
