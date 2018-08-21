defmodule Mix.Tasks.Hello do
  use Mix.Task

  @shortdoc "Simply runs the GreetEveryone.say/0 function"
  def run(_) do
    GreetEveryone.say()
  end
end
