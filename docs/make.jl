using MyTestPackage
using Documenter

DocMeta.setdocmeta!(MyTestPackage, :DocTestSetup, :(using MyTestPackage); recursive=true)




makedocs(;
    modules=[MyTestPackage],
    authors="Jonathan Miller jonathan.miller@fieldofnodes.com",
    sitename="MyTestPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://fieldofnodes.github.io/VeriQuEST.jl",
        assets=String[],
        size_threshold = 1_000_000,
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fieldofnodes/MyTestPackage.jl",
    devbranch="main",
    devurl="dev",
    target = "build",
    branch = "gh-pages",
    versions = ["stable" => "v^", "v#.#" ]
)
