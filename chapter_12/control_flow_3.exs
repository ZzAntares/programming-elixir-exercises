defmodule Solution do

  def ok! { :ok, message } do
    message
  end

  def ok! { :error, _ } do
    raise "There was an error processing tuple"
  end

end

IO.inspect Solution.ok!({ :ok, "hello" })
IO.inspect Solution.ok!({ :error, "miss" })
