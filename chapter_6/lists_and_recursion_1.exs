defmodule MyList do

  def mapsum([el], fun), do: fun.(el)
  def mapsum([head | tail], fun) do
    fun.(head) + mapsum(tail, fun)
  end

end

IO.puts MyList.mapsum([1, 2, 3], &(&1 * &1))
