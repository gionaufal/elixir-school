defmodule Greeter do
  @moduledoc """
  Provides function `hello/2` to greet a person or a list of people
  """

  @doc """
  Prints a hello message

  ## Parameters

    - names: String or list that represent the name or names
    - language_code (optional): default "en", accepts "en" and "es"

  ## Examples

      iex> Greeter.hello("Gio")
      "Hello, Gio"

      iex> Greeter.hello(["Gio", "Debs"])
      "Hello, Gio, Debs"

  """

  @spec hello(String.t()) :: String.t()
  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end
