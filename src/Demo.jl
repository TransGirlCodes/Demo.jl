module Demo

export @demo

function julia_code(expr)
    println("Julia code:")
    println("-----------\n")
    println(expr)
    println("\n...")
end

function outcome()
    println("Output:")
    println("-------\n")
end

macro demo(expr)
    s = string(expr)
    quote
        input = chomp(readline(STDIN))
        julia_code($s)
        input = chomp(readline(STDIN))
        outcome()
        println($(esc(expr)))
        println("\n")
    end
end

end
