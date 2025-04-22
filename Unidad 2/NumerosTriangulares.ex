# ejercicio para hallar un numero triangular segun su pocision
defmodule NumeroTriangular do
  def triangular(0), do: 0
  def triangular(n) when n >= 0, do: n + triangular(n - 1)
end

IO.puts(NumeroTriangular.triangular(4))

# explicacion
# triangular(4) = 4 + triangular(3) = 10
# triangular(3) = 3 + triangular(2) = 6
# triangular(2) = 2 + triangular(1) = 3
# triangular(1) = 1 + triangular(0) = 1
