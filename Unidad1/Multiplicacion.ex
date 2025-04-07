# ejercicio para hallar los multiplos de un numero sin usar ciclos 04/03/2025
defmodule Multiplicacion do
  def main do
    "ingrese un numero: "
    |> Util.ingresar_entero(:entero)
    |> multiplos_numeros()
  end

  defp multiplos_numeros(numero) do
    # la lista "1..10" hace referencia a los numeros por que se sera multiplicado la variable "numero"
    Enum.map(1..10, fn x -> numero * x end)
  end
end

IO.inspect(Multiplicacion.main())
