require "./climate/builder"
require "./types/types"
require "./admiral/builder"

# colocar Configuration como modulo padre en vez de class que es lo ideal y los hijos con extend self
module Configuration
  include Types::Climate

  module Climate
    extend self

    def setConfig(textToPaint : String, styleToApply : Styles)
      styleToApply[1].each { |st| addClimateConf(ClimateBuilder.new(st[:style]).getClimateClass) }
      styleToApply[1].each do |st|
        if st[:block] == "var"
          # TODO: colocar logica para replazar los strings en crystal
          textToPaint
        else
        end
      end
    end

    private def addClimateConf(climateStyles : Climate::Style)
      Climate.configure do |settings|
        settings.styles << climateStyles
      end
    end
  end
end
