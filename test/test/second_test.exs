defmodule BasicListTest do
    use ExUnit.Case


    describe "add_item/2" do

        test "adds input to an empty list" do
            actual = BasicList.add_item(2)
            expected = [2]

            assert ^actual = expected
        end



        test "add input to appropriate list" do
            actual = BasicList.add_item([2], 2)
            expected = [2, 2]

            assert ^actual = expected
        end
   


        test "adds a list to an empty list" do
            actual = BasicList.add_item([], [2])
            expected = [2]

            assert ^actual = expected
        end


        test "adds a list to a populated list" do
            actual = BasicList.add_item([123], [456])
            expected = [123, 456]

            assert ^actual = expected
        end


        test "combines two inputs of same type into a list" do
            actual = BasicList.add_item("foo", "bar")
            expected = ["foo", "bar"]

            assert ^actual = expected
        end

        test "combines two inputs of differend type into a list" do
            actual = BasicList.add_item("hello", %{hello: "Dave"})
            expected = ["hello", %{hello: "Dave"}]

            assert ^actual = expected
        end

        test "adds item to state when item is not a list" do
            actual = BasicList.add_item([2,2], 2)
            expected = [2,2,2]

            assert ^actual = expected
        end

        test "adds item to state when item is a list" do
            actual = BasicList.add_item([2, 2], [2])
            expected = [2, 2, 2]

            assert ^actual = expected
        end
    end
end