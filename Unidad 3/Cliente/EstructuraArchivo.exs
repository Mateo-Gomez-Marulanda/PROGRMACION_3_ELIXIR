defmodule EstructuraArchivos do
  def main do
    crear_lista_usuarios()
    |> Usuario.escribir_csv("usuarios.csv")

  end
end
