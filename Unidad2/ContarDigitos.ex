# ejercicio para contar la cantidad de digitos que tiene un numero entero

defmodule ContarDigitos do
  def contar_digitos(0), do: 0
  def contar_digitos(n) when n >= 0, do: 1 + contar_digitos(div(n, 10))
end

IO.puts(ContarDigitos.contar_digitos(78659))

# EXPLICACION DEL FUNCIONAMIENTO
# contar_digitos(78659) = 1 + contardigitos(div(78659,10))
# contrar_digitos(7865) = 1 + contardigitos(div(7865,10))
# contar_digitos(786) = 1 + contardigitos(div(786,10))
# contar_digitos(78) = 1 + contardigitos(div(78,10))
# contar_digitos(7) = 1 + contardigitos(div(7,10)) =
# contar_digitos(0) = 1 + contardigitos(div(0,10)) = 1
