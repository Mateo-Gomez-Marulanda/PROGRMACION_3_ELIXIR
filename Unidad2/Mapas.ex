defmodule Mapas do
  def main do
    mapa = %{
      nombre: "anita",
      edad: 150
    }

    # acceder a un elemento
    #  "Desconocido" es por descarte
    Map.get(mapam("nombre", "Desconocido"))

    # agreagar  o actualizar valores
    Map.put(mapa, "autor", "Pepe toño")

    # metodo update
    nuevo_mapa = Map.update(mapa, :edad, fn x -> z end)

    # actualizar valores
    actualizado = %{mapa | version: 1.16}

    # iteraciones
    Enum.each(mapa(fn {clave, valor} -> IO.puts("#{clave}: #{valor}") end))
  end
end
