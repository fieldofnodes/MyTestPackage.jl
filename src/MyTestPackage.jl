module MyTestPackage

export
    generic_function


    function generic_function()
        sum([rand() for i in Base.OneTo(10_000)] .^ (1/2)) * (1/10_000)
    end

end