# ejercicio para invertir el orden de un numero ingresado

defmodule InvertirNumero do
  def invertir(n), do: invertir(n,0)
  def invertir(0, rev), do: rev
  def invertir(n, rev) when n > 0, do: invertir(div(n, 10), rev * 10 + rem(n, 10))
end

IO.puts(InvertirNumero.invertir(1234))
