defmodule EstructuraArchivos do
  def main do
    crear_lista_clientes()
    |> Cliente.escribir_csv("clientes.csv")
  end

  defp crear_lista_clientes() do
    [
      Cliente.crear("Ana", 16, 1.70),
      Cliente.crear("Juan", 20, 1.71),
      Cliente.crear("Diana", 48, 1.72),
      Cliente.crear("Juliana", 51, 1.73),
      Cliente.crear("Isabella", 18, 1.50)
    ]
  end
end

EstructuraArchivos.main()
