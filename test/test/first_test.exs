defmodule ExampleTest do
    use ExUnit.Case
    doctest Example

    describe "Example" do
        
        test "method only accept numbers" do
            actualSum = Example.sum("foo", "bar")
            actualSubstract = Example.substract("foo", "bar")
            actualMultiply = Example.multiply("foo", "bar")
            actualDivide = Example.divide("foo", "bar")

            expected = "Incorrect type received as arguments"

            assert actualSum == expected
            assert actualSubstract == expected
            assert actualMultiply == expected
            assert actualDivide == expected
        end
    end

    describe "sum/2" do
        test "sum two numbers together" do
            actual = Example.sum(2, 3)
            expected = 5

            assert actual == expected
        end
    end

    describe "substract/2" do
        test "sum two numbers together" do
            actual = Example.substract(5, 3)
            expected = 2

            assert actual == expected
        end
    end

    describe "multiply/2" do
        test "sum two numbers together" do
            actual = Example.multiply(10, 3)
            expected = 30

            assert actual == expected
        end
    end

    describe "divide/2" do
        test "sum two numbers together" do
            actual = Example.divide(6, 3)
            expected = 2

            assert actual == expected
        end
    end
end