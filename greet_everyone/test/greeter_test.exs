defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  test "greets Gio" do
    assert Greeter.hello("Gio") == "Hello, Gio"
  end
end
