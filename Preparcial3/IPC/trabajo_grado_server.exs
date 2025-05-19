defmodule NodoServer do
  # Nombre,Apellidos,Cédula,Programa académico,Título profesional
  @autor1 [
    nombre: "Juan",
    apellidos: "Pérez",
    cedula: "1234567890",
    programa_academico: "Ingeniería de Sistemas",
    titulo_profesional: "Ingeniero de Sistemas"
  ]

  @autor2 [
    nombre: "Ana",
    apellidos: "Gómez",
    cedula: "0987654321",
    programa_academico: "Ingeniería de Sistemas",
    titulo_profesional: "Ingeniera de Sistemas"
  ]

  @autor3 [
    nombre: "Luis",
    apellidos: "Martínez",
    cedula: "1122334455",
    programa_academico: "Ingeniería de Sistemas",
    titulo_profesional: "Ingeniero de Sistemas"
  ]

  @autor4 [
    nombre: "María",
    apellidos: "López",
    cedula: "5566778899",
    programa_academico: "Ingeniería de Sistemas",
    titulo_profesional: "Ingeniera de Sistemas"
  ]

  @autor5 [
    nombre: "Carlos",
    apellidos: "Hernández",
    cedula: "9988776655",
    programa_academico: "Ingeniería de Sistemas",
    titulo_profesional: "Ingeniero de Sistemas"
  ]

  # Fecha,Título,Descripción,Lista de autores (identificados por cédula)
  @trabajo_grado1 [
    fecha: "2023-10-01",
    titulo: "Trabajo de Grado 1",
    descripcion: "Descripción del trabajo de grado 1",
    autores: ["1234567890", "0987654321"]
  ]

  @trabajo_grado2 [
    fecha: "2023-10-02",
    titulo: "Trabajo de Grado 2",
    descripcion: "Descripción del trabajo de grado 2",
    autores: ["1122334455", "5566778899"]
  ]

  @trabajo_grado3 [
    fecha: "2023-10-03",
    titulo: "Trabajo de Grado 3",
    descripcion: "Descripción del trabajo de grado 3",
    autores: ["9988776655", "1234567890"]
  ]

  @nombre_servicio_local :servicio_consulta
  def main() do
    Util.mostrar_mensaje("consulta trabajos de grado")
    registrar_servicio(@nombre_servicio_local)
    procesar_peticiones()
  end

  defp registrar_servicio(nombre_servicio_local),
    do: Process.register(self(), nombre_servicio_local)

  defp procesar_peticiones() do
    receive do
      {productor, mensaje} ->
        respuesta = procesar_peticion(mensaje)
        send(productor, respuesta)

        if respuesta != :fin do
          procesar_peticiones()
        end
    end
  end

  defp procesar_peticion(:fin), do: :fin

  defp procesar_peticion(:consultar_trabajos_grado),
    do: [@trabajo_grado1, @trabajo_grado2, @trabajo_grado3]
end

NodoServer.main()

# elixir --sname nodoservidor@localhost --cookie my_cookie trabajo_grado_server.exs
