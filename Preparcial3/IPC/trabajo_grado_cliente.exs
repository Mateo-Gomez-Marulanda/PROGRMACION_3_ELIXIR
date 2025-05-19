defmodule NodoCliente do
  @nombre_servicio_local :servicio_peticion
  @servicio_local {@nombre_servicio_local, :nodocliente@cliente}
  @nodo_remoto :nodoservidor@localhost
  @servicio_remoto {:servicio_consulta, @nodo_remoto}

  @peticiones [  :consultar_trabajos_grado, :fin]

  def main() do
    Util.mostrar_mensaje("realizando peticiones")

    @nombre_servicio_local
    |> registrar_servicio()

    establecer_conexion(@nodo_remoto)
    |> iniciar_produccion()
  end

  defp registrar_servicio(nombre_servicio_local),
    do: Process.register(self(), nombre_servicio_local)

  defp establecer_conexion(nodo_remoto) do
    Node.connect(nodo_remoto)
  end

  defp iniciar_produccion(false),
    do: Util.mostrar_error("No se pudo conectar con el nodo servidor")

  defp iniciar_produccion(true) do
    enviar_mensajes()

    recibir_respuestas()
  end

  defp enviar_mensajes() do
    Enum.each(@peticiones, &enviar_mensaje/1)
  end

  defp enviar_mensaje(mensaje) do
    send(@servicio_remoto, {@servicio_local, mensaje})
  end

  defp recibir_respuestas() do
    receive do
      :fin ->
        :ok

      respuesta when is_list(respuesta) ->
        Enum.each(respuesta, fn trabajo ->
          IO.inspect(trabajo, label: "Trabajo de grado")
        end)

        recibir_respuestas()

      respuesta ->
        Util.mostrar_mensaje("\t -> \"#{respuesta}\"")

        recibir_respuestas()
    end
  end
end

NodoCliente.main()
# elixir --sname nodocliente@cliente --cookie my_cookie trabajo_grado_cliente.exs
