require "climate"
require "../types/types"
struct ClimateBuilder include Types::Climate
    getter style : Style

    def initialize(@style)
    end

    def getClimateClass
        Climate::Style.new(
            delimiters: @style[:delimiters],
            keep_delimiters: @style[:keep_delimiters],
            colors: @style[:colors],
            decoration: @style[:decoration]
        )
    end
end