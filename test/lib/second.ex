defmodule BasicList do
    
    def add_item(item), do: add_item([], [item])

    def add_item(state, item) when is_list(state) and is_list(item) do
        state ++ item
    end

    def add_item(state, item) when is_list(state) do
        add_item(state, [item])
    end

    def add_item(state, item) when is_list(item) do
        add_item([state], item)
    end

    def add_item(state, item) do
        add_item([state], [item])
    end
end