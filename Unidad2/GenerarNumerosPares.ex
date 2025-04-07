# ejercicio que se encarga de hallar el n-nemsimo numero par
defmodule NumerosPares do
  def pares(1), do: 2
  def pares(n) when n > 1, do: 2 + pares(n-1)
end

IO.puts(NumerosPares.pares(5))
