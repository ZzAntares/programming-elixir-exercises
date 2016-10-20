defmodule Evaluator do

  def calculate(chars) do
    expr = Kernel.to_string chars

    cond do
      String.contains? expr, "+" ->
        values = expr
          |> String.split("+")
          |> Enum.map(&String.trim &1)
          |> Enum.map(&String.to_integer &1)
        List.first(values) + List.last(values)

      String.contains? expr, "*" ->
        values = expr
          |> String.split("*")
          |> Enum.map(&String.trim &1)
          |> Enum.map(&String.to_integer &1)
        List.first(values) * List.last(values)

      String.contains? expr, "-" ->
        values = expr
          |> String.split("-")
          |> Enum.map(&String.trim &1)
          |> Enum.map(&String.to_integer &1)
        List.first(values) - List.last(values)

      String.contains? expr, "/" ->
        values = expr
          |> String.split("/")
          |> Enum.map(&String.trim &1)
          |> Enum.map(&String.to_integer &1)
        List.first(values) / List.last(values)
    end
  end
end

IO.inspect Evaluator.calculate('12 + 45')
IO.inspect Evaluator.calculate('99 * 9')
IO.inspect Evaluator.calculate('1 - 45')
IO.inspect Evaluator.calculate('12 / 4')
