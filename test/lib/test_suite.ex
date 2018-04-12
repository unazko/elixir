defmodule TestSuite do

    @moduledoc """
        This module gives functionality for storing and executing tests
    """

    defstruct(
        tests: []
    )

    def new(), do:  %TestSuite{}

    def new(initial_tests) when is_list(initial_tests) do
        %TestSuite{tests: initial_tests}
    end

    def new(initial_tests) when is_function(initial_tests) do
        %TestSuite{tests: [initial_tests]}
    end

    def new(_initial_tests) do
        "TestSuite.new/1 takes a list of functions or a function"
    end

    def add(test_suite, to_add) when is_function(to_add) and is_map(test_suite) do
        #Map.put(test_suite, :tests, [pending: to_add] ++ test_suite.tests)
        new([to_add] ++ test_suite.tests)
    end

    def add(test_suite, to_add) when is_list(to_add) and is_map(test_suite) do
        #Map.put(test_suite, :tests, fn -> Enum.map(to_add, fn test -> [pending: test] ++ test_suite.tests end) end)
        new(to_add ++ test_suite.tests)
    end

    def add(_test_suite, _to_add) do
        "TestSuite.add/2 takes as first argument a map and as second argument a function or list of functions"
    end

    def add(test_suite, to_add, tags) when is_atom(tags) and is_function(to_add) do
        list = [{to_add, tags}]
        new(list ++ test_suite.tests)
    end

    def add(test_suite, to_add, tags) when is_atom(tags) and is_list(to_add) do
        list = Enum.map(to_add, fn test -> {test, tags} end)
        new(list ++ test_suite.tests)
    end

    def add(test_suite, to_add, tags) when is_list(tags) and is_function(to_add)  do
        tuple = List.to_tuple([to_add] ++ tags)
        new([tuple] ++ test_suite.tests)
    end

    def add(test_suite, to_add, tags) when is_list(tags) and is_list(to_add) do

        list = Enum.map(to_add, fn test -> List.to_tuple([test] ++ tags) end)
        new(list ++ test_suite.tests)
    end

    def add(_test_suite, _to_add, _tags) do
        "TestSuite.add/3 takes as arguments (map, function or list of functions, atom or list of atoms)"
    end

    def size(test_suite) when is_map(test_suite) do
        length(test_suite.tests)
    end

    def size(_test_suite) do
        "TestSuite.size/1 takes as first argument a map"
    end

    def size(test_suite, options) when is_map(test_suite) and is_list(options) do
        #Enum.reduce(test_suite.tests, 0, fn (test, acc) -> options end)
    end

    def size(_test_suite, _options) do
        "TestSuite.size/2 takes (map, list)"
    end
end