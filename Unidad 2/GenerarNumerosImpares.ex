# ejercicio que se encarga de hallar el n-nemsimo numero impar
defmodule NumerosPares do
  def impares(1), do: 1
  def impares(n) when n > 1, do: 2 + impares(n - 1)
end

IO.puts(NumerosPares.impares(5))
