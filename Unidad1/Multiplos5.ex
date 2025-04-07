# ejercicio para separar los multiplos de 5 de una lista (Unidad 1)

defmodule MultiploCinco do
  def main do
    numeros =
      [3, 6, 56, 80, 7, 15, 100]
      |> multiplos()
      |> generar_mensaje()
      |> Util.mostrar_mensaje()
  end

  defp multiplos(numeros) do
    #uso de la funcion rem(x,5) para hallar el residuo de cada numero al dividir entre 5
    Enum.filter(numeros, fn x -> rem(x, 5) == 0 end)
  end

  defp generar_mensaje(multiplos) do

    "Los multiplos de 5 son: #{Enum.join(multiplos, " ")}"
  end
end
IO.inspect(MultiploCinco.main())
