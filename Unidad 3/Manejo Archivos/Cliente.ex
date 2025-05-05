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
      |> Util.ingresar_real(:real)

    crear(nombre, edad, altura)
  end

  def ingresar(mensaje, :clientes) do
    mensaje |> ingresar([], :clientes)
  end

  defp ingresar(mensaje, lista, :cliente) do
    cliente =
      mensaje
      |> ingresar()

    nueva_lista = lista ++ [:cliente]

    mas_clientes =
      "ingresar mas clientes (s/n)"
      |> Util.ingresar_booleano(:boolean)

    case mas_clientes do
      true ->
        mensaje
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
    |> generar_mensaje_clientes(&convertir_cliente_linea_csv/1)
    # adiciona los títulos
    |> (&("nombre, edad, altura\n" <> &1)).()
    |> (&File.write(nombre, &1)).()
  end

  defp convertir_cliente_linea_csv(cliente) do
    "#{cliente.nombre},#{cliente.edad}, #{cliente.altura}"
  end

  def leer_csv(nombre) do
    nombre
    |> File.stream!()
    # ingnora los encabezados
    |> Stream.drop(1)
    |> Enum.map(&convertir_cadena_clientes/1)
  end

  defp convertir_cadena_clientes(cadena) do
    [nombre, edad, altura] =
      cadena
      |> String.split(",")
      |> Enum.map(&String.trim/1)

    edad = edad |> String.to_integer()
    altura = altura |> String.to_float()

    Cliente.crear(nombre, edad, altura)
  end
end
