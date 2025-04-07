# pregunta preparcial: crear una tupla que guarde los datos de
# un estudiante {nombre,edad,grado} ademas de poderlos consultar

defmodule DatosEstudiante do
  def main do

    # crear una tupla que contiene el nombre de los elementos
    # asignarle a cada elemento de la tupla un valor

    estudiante = {"juan", 9, "5º"}
    consultar_nombre(estudiante)
    consultar_edad(estudiante)
    consultar_grado(estudiante)
  end

  # imprimir cada elemento
  defp consultar_nombre(estudiante) do
    elem(estudiante, 0)
    |> IO.inspect(label: "nombre")
  end

  defp consultar_edad(estudiante) do
    elem(estudiante, 1)
    |> IO.inspect(label: "edad")
  end

  defp consultar_grado(estudiante) do
    elem(estudiante, 2)
    |> IO.inspect(label: "grado")
  end
end

DatosEstudiante.main()
