#ejemplo funciones anonimas 19/02/2025

defmodule Calculo do
  def resta(func) do
    func.(3,5)
  end

  def potencia(func) do
    func.(5)
  end
end

#funciones anonimas
potencia = fn n -> n*n end
resta = fn a,b -> a - b end
#ejecutar funciones anonimas
IO.puts(Calculo.resta(resta))
IO.puts(Calculo.potencia(potencia))
