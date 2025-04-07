#ejercicio de producto de numeros naturales

defmodule ProductoNatural do

  def producto_n(0), do: 1
  def producto_n(n) when n > 0, do: n * producto_n(n - 1)

end

IO.puts(ProductoNatural.producto_n(4))

# EXPLICACION DEL FUNCIONAMIENTO
# producto(4) = 4 * producto(3) = 24
# producto(3) = 3 * producto(2) = 6
# producto(2) = 2 * producto(1) = 2
# producto(1) = 1 * producto(0) = 1
