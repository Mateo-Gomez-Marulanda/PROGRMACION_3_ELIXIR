# ejercicio para saber si una persona merece una pencion sugun su numero de semnanas cotizadas 03/03/2025

defmodule SemanaCotizadas do
  def main do
    numero_semanas =
      "Ingrese su numero de semanas cotizadas: "
      |> Util.ingresar_entero(:entero)

    semana_cotizada(numero_semanas)
  end

  defp semana_cotizada(numero_semanas) do
    if numero_semanas > 1300 do
      IO.puts(" cumple con el minimo de semanas")
    else
      IO.puts("no cumple con el numero minimo de semanas")
    end
  end
end

IO.puts(SemanaCotizadas.main())
