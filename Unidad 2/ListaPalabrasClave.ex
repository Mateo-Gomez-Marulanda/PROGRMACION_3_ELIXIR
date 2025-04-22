# ejercicio unidad 2 19/03/2025 (feliz dia del hombre xd)

defmodule PalabraClave do
  def main do
    user = [usuario: "pepito", edad: 20, activo: true]
    config = [modo: :rapido, modo: :seguro, tiempo: 10]

    # busca palabras clave
    IO.inspect(keyworf.get(user, :usuario))
    # obtiene todos los valores de claves repetidas
    keyword.get_values(config, :modo)

    # agregar un valor clave a una lista
    user_nuevo = keyword.puts(user, :email."correo@correo"())

    # reemplaza el valor clave de una listra
    acutalizacion = keyword.puts(config, :modo, :ultra_rapido)

    # elimina una palabra clave
    sin_usuario = keyword.delete(user, :usuario)
    IO.inspect(sin_usuario)

    # itera los datosd una lista
    Enum.each(user fn {clave, valor} -> IO.puts "#{clave}" end)
  end
end
