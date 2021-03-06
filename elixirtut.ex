defmodule M do
  def main do
    do_stuff()
  end

  def do_stuff do

    spawn(fn() -> myloop(50,1) end)
    spawn(fn() -> myloop(100,50) end)

    send(self(), {:french, "Bob"})

    receive do
      {:german, name} -> IO.puts "Guten tag #{name}"
      {:french, name} -> IO.puts "Bonjour #{name}"
      {:mandarin, name} -> IO.puts "Ni hao #{name}"
      {:english, name} -> IO.puts "Hello #{name}"
    after
      500 -> IO.puts "Time up"
    end

  end

  def myloop(0,_), do: nil

  def myloop(max, min) do
    if max < min do
      myloop(0, min)
    else
      IO.puts "Num : #{max}"
      myloop(max - 1, min)
    end
  end

  def display_list([word|words]) do
    IO.puts word
    display_list(words)
  end
  def display_list([]), do: nil

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

#Tuples
#    my_stats = {212, 6.0, :Derek}
#    IO.puts "Tuple #{is_tuple(my_stats)}"
#    my_stats2 = Tuple.append(my_stats, 27)
#    IO.puts "Age #{elem(my_stats2, 3)}"
#    IO.puts "Size : #{tuple_size(my_stats2)}"
#    my_stats3 = Tuple.delete_at(my_stats2, 0)
#    IO.puts "my_stats3 (post-delete) : #{Enum.join(Tuple.to_list(my_stats3))}"
#    my_stats4 = Tuple.insert_at(my_stats3, 0, 1991)
#    IO.puts "my_stats4 (post-insert) : #{Enum.join(Tuple.to_list(my_stats4))}"
#    many_zeroes = Tuple.duplicate(0,5)
#    IO.puts "many_zeroes : #{Enum.join(Tuple.to_list(many_zeroes))}"
#    {weight, height, name} = {212, 6, "Derek"}
#    IO.puts "Weight : #{weight}"

#lists
#  def main do
#    do_stuff()
#  end
#
#  def do_stuff do
#    list1 = [1,2,3]
#    list2 = [4,5,6]
#    list3 = list2 ++ list1
#    list4 = list3 -- list1
#    IO.puts 6 in list2
#    [head | tail] = list3
#    IO.puts "Head : #{head}"
#    IO.write "Tail : "
#    IO.inspect tail
#    IO.inspect [97,98], charlists: :as_lists
#    Enum.each tail, fn item ->
#      IO.puts item
#    end
#
#    words = ["random", "words", "in a", "list"]
#    Enum.each words, fn zxc ->
#      IO.puts zxc
#    end
#
#    display_list(words)
#
#    IO.puts display_list(List.insert_at(words, 1, "Added"))
#
#    IO.puts "List.first : #{List.first(words)}"
#    IO.puts "List.last : #{List.last(words)}"
#
#  end
#
#  def display_list([word|words]) do
#    IO.puts word
#    display_list(words)
#  end
#  def display_list([]), do: nil

#####maps
#    capitals = %{"Alabama" => "Montgomery",
#      "Alaska" => "Juneau", "Arizona" => "Phoenix"}
#
#    IO.puts "Capital of Alaska is #{capitals["Alaska"]}"
#
#    capitals2 = %{alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix"}
#
#    IO.puts "Capital of Arizona is #{capitals2.arizona}"
#
#    capitals3 = Dict.put_new(capitals, "Arkansas", "Little Rock")

#####pattern matching
#    [length, width] = [20,30]
#    IO.puts "Width : #{width}"
#    [_, [_, a] ] = [20, [30, 40]]
#    IO.puts "Get Num : : #{a}"

#####anonymous functions, default values, other ways to write functions, multiple parameters
#    get_sum = fn (x, y) -> x + y end
#
#    IO.puts "5+5= #{get_sum.(5,5)}"
#
#    get_less = &(&1 - &2)
#
#    IO.puts "10-3= #{get_less.(10,3)}"
#
#    add_sum = fn
#      {x,y} -> IO.puts "#{x} + #{y} = #{x+y}"
#      {x,y,z} -> IO.puts "#{x} + #{y} + #{z} = #{x+y+z}"
#    end
#
#    add_sum.({1,2})
#    add_sum.({1,2,3})
#
#    IO.puts do_it()
#  end
#
#  def do_it(x \\ 1, y \\ 1) do
#    x + y
#  end

####recursion via factorials
#    IO.puts "Factorial of 4 : #{factorial(4)}"
#
#  end
#
#  def factorial(num) do
#    if num <= 1 do
#      1
#    else
#      result = num * factorial(num-1)
#      result
#    end

#####recursion via array / sum, loop
#    IO.puts "Sum : #{sum([1,2,3])}"
#
#    myloop(5, 1)
#
#  end
#
#  def sum([]), do: 0
#
#  def sum([h|t]), do: h + sum(t)
#
#  def myloop(0,_), do: nil
#
#  def myloop(max, min) do
#    if max < min do
#      myloop(0, min)
#    else
#      IO.puts "Num : #{max}"
#      myloop(max - 1, min)
#    end

#####Enumerables
#    IO.puts "All even in list : #{Enum.all?([1,2,3],
#    fn(n)->rem(n, 2) == 0 end)}"
#
#    IO.puts "Any even in list : #{Enum.any?([1,2,3],
#    fn(n)->rem(n, 2) == 0 end)}"
#
#    Enum.each([1,2,3], fn(n) -> IO.puts n end)
#
#    dbl_list = Enum.map([1,2,3], fn(x) -> x * 2 end)
#    IO.inspect dbl_list
#
#    sum_vals = Enum.reduce([1,2,3], fn(n, sum) -> n + sum end)
#    IO.puts "Sum : #{sum_vals}"
#
#    IO.inspect Enum.uniq([1,2,2,2,2,2,2,5,6])

#####List comprehensions
#    dbl_list = for n <- [3,4,5], do: n * 2
#    IO.inspect dbl_list
#
#    even_list = for n <- [1,2,3,4], rem(n,2) == 0, do: n
#    IO.inspect even_list
#
#    over_ten_list = for n <- [4,5,6,7], do: n * 2
#    over_ten_list_test = for n <- over_ten_list, n >= 10, do: n
#    IO.inspect over_ten_list_test

#####exception handling
#    err = try do
#      5 / 0
#    rescue
#      ArithmeticError -> "Can't Divide by Zero"
#    end
#
#    IO.puts err

#####concurrency
#    spawn(fn() -> myloop(50,1) end)
#    spawn(fn() -> myloop(100,50) end)
#
#    send(self(), {:french, "Bob"})
#
#    receive do
#      {:german, name} -> IO.puts "Guten tag #{name}"
#      {:french, name} -> IO.puts "Bonjour #{name}"
#      {:mandarin, name} -> IO.puts "Ni hao #{name}"
#      {:english, name} -> IO.puts "Hello #{name}"
#    after
#      500 -> IO.puts "Time up"
#    end
