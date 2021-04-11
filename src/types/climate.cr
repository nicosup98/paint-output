module ClimateTypes
    alias Delimiters = {Char, Char}
    alias Colors = {fore: Symbol, back: Symbol}
    alias Styles = {String, Array({block: String, style: Style})}
    alias Style = {delimiters: Delimiters, keep_delimiters: Bool, colors: Colors, decoration: Symbol}
  end