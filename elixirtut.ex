defmodule M do
  def main do
    #name = IO.gets("What is your name? ") |> String.trim
    #IO.puts "Hello #{name}!"
    data_stuff()
  end

  def data_stuff do
    my_int = 123
    IO.puts "Integer (test change) #{is_integer(my_int)}"
  end

end
