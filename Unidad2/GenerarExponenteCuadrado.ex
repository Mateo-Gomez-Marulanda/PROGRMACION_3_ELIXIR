# generar el n-nesimo numero de exponente cuadrado
defmodule ExponenteCuadrado do
  def exponente(1), do: 1
  def exponente(n) when n > 1, do: n ** n
end

IO.puts(ExponenteCuadrado.exponente(3))
