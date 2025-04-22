# ejercicio para sumar n numeros naturales usando recursividad

defmodule SumaNatural do
  def suma_n(0), do: 0
  def suma_n(n) when n > 0, do: n + suma_n(n - 1)
end

IO.puts(SumaNatural.suma_n(5))

# explicacion
# suma(5) = 5 + suma(4) = 15
# suma(4) = 4 + suma(3) = 10
# suma(3) = 3 + suma(2) = 6
# suma(2) = 2 + suma(1) = 3
# suma(1) = 1 + suma(0) = 1
