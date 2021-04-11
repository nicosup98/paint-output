require "admiral"

class PaintOutput < Admiral::Command
    define_argument text :  description: "chunk of code to paint", 
                            required: true

    define_flag languaje :  description: "languaje squeme", 
                            default: "js",
                            long: "languaje", 
                            short: "L",
                            required: true

    def run
        # TODO: colocar logica de creacion de estilos para enviarselo a Configuration
        # consiste en crear el Styles, lleva el nombre del lenguaje en la posicion 0 de la tupla, 
        # en la posicion 1 lleva un arreglo que contiene un NamedTupple que tiene block y style, block es el nombre del bloque a pintar.
        # Ej {block: "var", style:...} 
        # esto pintaria todo aquellos keywords que declaren varaibles 
        
    end
end