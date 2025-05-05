defmodule Proceso do
  @cantidad_procesos_internos 5
  def main do
    Benchmark.detectar_tiempo_ejecucion(Proceso, :a, {@cantidad_procesos_internoscantidad_procesos_internos})
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  def simulacion(cantidad_procesos_internos) do
    datos_prueba = [{"A", 2500}, {"B", 1500}, {"C", 500}, {"D", 3500}]

    Enum.each(datos_prueba, fn valor -> simulando_proceso(valor, cantidad_procesos_internos) end)
  end

  def simulando_proceso({mensaje, demora}, cantidad_procesos_internos) do
    IO.puts("#{mensaje} -> (inicia)")

    Enum.each(1..cantidad_procesos_internos, fn i ->
      :timer.sleep(demora)
      IO.puts("#{mensaje}-#{i}")
    end)

    IO.puts("#{mensaje}-> (finalizada)")
  end

  def generar_mensaje(tiempo), do: "El tiempo de ejecucion es de #{tiempo} microsegundos."
end

Proceso.main()
