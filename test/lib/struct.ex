defmodule BasicStruct do
    alias Person
    @moduledoc """
        Basic useage of a struct and how to build one
    """

    def create_person() do
        %Person{
            name: "Fred",
            age: 20,
            city: "Manchester",
            occupation: "Influencer",
            sport: "Dancing",
            food: "Pizza",
            place: "Thailand"
        }
    end
end