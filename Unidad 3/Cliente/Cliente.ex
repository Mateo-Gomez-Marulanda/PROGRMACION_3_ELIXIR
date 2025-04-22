defmodule Cliente do
  defstruct nombre: "", edad: 0, altura: 0.0

  def crear(nombre, edad, altura) do
    %Cliente{nombre: nombre, edad: edad, altura: altura}
  end

  def ingresar(mensaje) do
    mensaje
    |> Util.mostrar_mensaje()

    nombre =
      "ingresar nombre"
      |> Util.ingresar_texto(:texto)

    edad =
      "ingresar edad"
      |> Util.ingresar_entero(:entero)

    altura =
      "ingresar altura"
      |> Util.ingresar_real(:altura)

    crear(nombre, edad, altura)
  end

  def ingresar(mensaje, :clientes) do
    mensaje |> ingresar([], :cliente)
  end

  defp ingresar(mensaje, lista, :cliente) do
    cliente =
      mensaje
      |> ingresar_booleano(:boolean)

    nueva_lista = lista ++ [:cliente]

    mas_clientes =
      "ingresar mas clientes "
      |> Util.ingresar()

    case max_clientes do
      true ->
        mesnaje
        |> ingresar(nueva_lista, :clientes)

      false ->
        nueva_lista
    end
  end

  def generar_mensaje_clientes(lista_clientes, parser) do
    lista_clientes
    |> Enum.map(parser)
    |> Enum.join("\n")
  end

  def escribir_csv(clientes, nombre) do
    clientes
    |> generar_mensaje_clientes(&convertir_usuario_linea_csv/1)
    |> (&("nombre, edad , altura\n" <> &1)).()
    |> (&File.write(nombre, &1)).()
  end

  defp convertir_usuario_linea_csv(usuario) do
    "#{usuario.nombre}, #{usuario.edad}, #{usuario.altura}"
  end
end
