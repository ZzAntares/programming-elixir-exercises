defmodule BookTask do

  def get_extension(filename) do
    filename
    |> String.graphemes
    |> Enum.reverse
    |> Enum.take_while(fn(x) -> x != "." end)
    |> Enum.reverse
    |> List.insert_at(0, ".")
    |> Enum.join
  end

end

:io.format("~.2f", [123.567])
IO.puts System.get_env("HOME")
IO.inspect BookTask.get_extension("dave/test.exs")
IO.puts __DIR__
# Requires poison
Poison.decode!(~s({"name": "Devin Torres", "age": 27}), as: %Person{})
System.cmd "echo", ["hello"]
