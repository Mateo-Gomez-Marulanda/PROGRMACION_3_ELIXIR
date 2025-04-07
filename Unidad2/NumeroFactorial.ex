# programa para hallar el valor de un numero factorial

defmodule Factorial do
  def factorial(0), do: 1
  def factorial(n) when n > 0, do: n * factorial(n - 1)
end

IO.puts(Factorial.factorial(5))
