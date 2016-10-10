defmodule MyList do

  def span(a, b) when a == b, do: [b]

  def span(a, b) do
    [ a | span(a + 1, b) ]
  end

end

IO.inspect MyList.span(3, 6)
