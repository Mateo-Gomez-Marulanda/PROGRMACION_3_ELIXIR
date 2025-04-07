# ejercicio de recursividad sobre la serie de fiboncci 26/03/2025
defmodule SerieFibonacci do
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n) when n > 1, do: fibonacci(n - 1) + fibonacci(n - 2)
end

IO.puts(SerieFibonacci.fibonacci(6))
