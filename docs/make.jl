using MyTestPackage
using Documenter

DocMeta.setdocmeta!(MyTestPackage, :DocTestSetup, :(using MyTestPackage); recursive=true)

makedocs(;
    modules=[MyTestPackage],
    authors="Jonathan Miller jonathan.miller@fieldofnodes.com",
    sitename="MyTestPackage.jl",
    format=Documenter.HTML(;
        canonical="https://fieldofnodes.github.io/MyTestPackage.jl",
        edit_link="main",
        assets=String[],
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
