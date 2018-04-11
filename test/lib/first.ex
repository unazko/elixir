defmodule Example do
    @moduledoc """
        Implements a basic Calculator that performs rudimentary calculations
    """

    @doc """
        Calculates the sum of two numbers.

    ##Examples

        iex> Example.sum(2, 3)
        5

        iex> Example.sum("foo", "bar")
        "Incorrect type received as arguments"

    """

    def sum(a, b) when is_integer(a) and is_integer(b), do: a + b
    def sum(_a, _b), do: flag_incorrect_type()

    @doc """
        Substracts two nubmers

    ## Examples

        iex> Example.substract(10, 3)
        7

        iex> Example.substract("foo", "bar")
        "Incorrect type received as arguments"
    """
    def substract(a, b) when is_integer(a) and is_integer(b), do: a - b
    def substract(_a, _b), do: flag_incorrect_type()

    @doc """
        Multiply two numbers together

    ## Examples

        iex> Example.multiply(2, 3)
        6

        iex> Example.multiply("foo", "bar")
        "Incorrect type received as arguments"
    
    """

    def multiply(a, b) when is_integer(a) and is_integer(b), do: a * b
    def multiply(_a, _b), do: flag_incorrect_type()

    @doc """
        Divide two numbers

    ## Example

        iex> Example.divide(25, 5)
        5.0

        iex> Example.divide("foo", "bar")
        "Incorrect type received as arguments"
    """

    def divide(a, b) when is_integer(a) and is_integer(b), do: a / b
    def divide(_a, _b), do: flag_incorrect_type()

    defp flag_incorrect_type, do: "Incorrect type received as arguments"
end