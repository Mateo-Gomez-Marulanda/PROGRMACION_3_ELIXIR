# ejemplo para calcular Impuesto 19/02/2025

defmodule Impuesto do
  # funcion impuesto que recibe un precio y un tipo de descuento
  def impuesto(precio, tipo) do
    #la funcion privada no es necesario llamarla usando el nombremodulo.metodoprivado(atributo)
    porcentaje(tipo) * precio
  end

  # funcion PRIVADA porcentaje que aplica el descuento segun el nombre del "atomo"
  defp porcentaje(tipo) do
    cond do
      tipo == :normal -> 0.20
      tipo == :reducido -> 0.10
      tipo == :super_reducido -> 0.05
    end
  end
end

IO.inspect  (Impuesto.impuesto(1000, :normal))
