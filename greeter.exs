defmodule Greeter do
  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    IO.puts phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end

Greeter.hello("Gio", "en")
Greeter.hello("Gio", "es")
Greeter.hello("Gio")
Greeter.hello(["Gio", "Debs"])
Greeter.hello(["Gio", "Debs"], "es")
