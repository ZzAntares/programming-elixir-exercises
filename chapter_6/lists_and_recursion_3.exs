defmodule MyList do

  def caesar('', _), do: ''

  def caesar([head | tail], n) do
    [ head + n | caesar(tail, n) ]
  end

end

IO.inspect MyList.caesar('hola', 3)
