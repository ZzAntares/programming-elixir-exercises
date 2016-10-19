defmodule MEnum do

  def all?([], _), do: true

  def all? [head | tail], fun do
    if fun.(head) do
      all?(tail, fun)
    else
      false
    end
  end

end
