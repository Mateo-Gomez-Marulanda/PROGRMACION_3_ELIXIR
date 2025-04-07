# ejercicio para elevar un numero n por un numero m

defmodule Potencia do
  # al usar como argumento _ significa que ese valor no es de relevancia
  def potencia(_, 0), do: 1
  def potencia(a, b) when b >= 0, do: a * potencia(a, b - 1)
end

IO.puts(Potencia.potencia(2, 3))

# EXPLICACION DEL FUNCIONAMIENTO
# potencia(2,4) = 2 * potencia(2,3) = 16
# potencia(2,3) = 2 * potenica(2,2) = 8
# potencia(2,2) = 2 * potencia(2,1) = 4
# potencia(2,1) = 2 * potencia(2,0) = 2
