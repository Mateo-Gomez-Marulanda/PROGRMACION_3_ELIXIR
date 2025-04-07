# ejercicio para la suma de los digitos de un numero

defmodule SumaDigitos do
  def suma_digitos(0), do: 0

  # rem(a,b) entrega el residuo al dividir a y b
  # div(a,b) entrega la division entera de a y b

  def suma_digitos(n) when n > 0, do: rem(n, 10) + suma_digitos(div(n, 10))
end

IO.puts(SumaDigitos.suma_digitos(1234))
