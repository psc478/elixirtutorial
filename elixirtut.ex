defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do
    age = 16

    case 2 do
      1 -> IO.puts "Entered 1"
      2 -> IO.puts "Entered 2"
      _ -> IO.puts "Default"
    end

    IO.puts "Ternary : #{if age > 18, do: "Can Vote", else: "Can't Vote"}"
  end

end

#####input output
#name = IO.gets("What is your name? ") |> String.trim
#IO.puts "Hello #{name}!"

#####String queries
#my_str = "my SENtence"
#IO.puts "Length : #{String.length(my_str)}"
#longer_str = my_str <> " " <> "is longer"
#IO.puts "My_str ? #{String.contains?(longer_str, my_str)}"
#IO.puts "First : #{String.first(my_str)}"
#IO.puts "Index 0 : #{String.at(my_str, 0)}"
#IO.puts "Substring : #{String.slice(my_str, 3, 7)}"
#IO.inspect String.split(longer_str, " ")
#IO.puts String.reverse(longer_str)
#IO.puts String.upcase(longer_str)
#IO.puts String.downcase(longer_str)
#IO.puts String.capitalize(longer_str)

#####Math queries
#    4*10 |> IO.puts
#    IO.puts "5 + 4 = #{5+4}"
#    IO.puts "5 - 4 = #{5-4}"
#    IO.puts "5 * 4 = #{5*4}"
#    IO.puts "5 / 4 = #{5/4}"
#    IO.puts "100 div 51 = #{div(100,51)}"
#    IO.puts "100 rem 51 = #{rem(100,51)}"

#Boolean comparison true false equal equivalent
#    IO.puts "4 == 4.0 : #{4 == 4.0}"
#    IO.puts "4 === 4.0 : #{4 === 4.0}"
#    IO.puts "4 != 4.0 : #{4 != 4.0}"
#    IO.puts "4 !== 4.0 : #{4 !== 4.0}"
#    IO.puts "5 > 4 : #{5 > 4}"
#    IO.puts "5 >= 4 : #{5 >= 4}"
#    IO.puts "5 < 4 : #{5 < 4}"
#    IO.puts "5 <= 4 : #{5 <= 4}"
#    age = 16
#    IO.puts "Vote & Drive : #{(age >= 16) and (age >= 18)}"
#    IO.puts "Vote or Drive : #{(age >= 16) or (age >= 18)}"
#    IO.puts not true
#    IO.puts "CANNOT Vote & Drive : #{not ((age >= 16) and (age >= 18))}"

#if statement, unless, conditional
#    age = 16
#    if age >= 18 do
#      IO.puts "Can Vote"
#    else
#      IO.puts "Cannot Vote"
#    end
#
#    unless age === 18 do
#      IO.puts "You're not 18"
#    else
#      IO.puts "You're 18"
#    end
#
#    cond do
#      age >= 18 -> IO.puts "You can vote"
#      age >= 16 -> IO.puts "You can drive"
#      age >= 14 -> IO.puts "You can wait"
#      true -> IO.puts "Default"
#    end

#case, Ternary
#    age = 16
#
#    case 2 do
#      1 -> IO.puts "Entered 1"
#      2 -> IO.puts "Entered 2"
#      _ -> IO.puts "Default"
#    end
#
#    IO.puts "Ternary : #{if age > 18, do: "Can Vote", else: "Can't Vote"}"
