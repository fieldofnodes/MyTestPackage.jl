using MyTestPackage
using Documenter

DocMeta.setdocmeta!(MyTestPackage, :DocTestSetup, :(using MyTestPackage); recursive=true)

makedocs(;
    modules=[MyTestPackage],
    authors="Jonathan Miller",
    repo="https://github.com/fieldofnodes/MyTestPackage.jl/blob/{commit}{path}#{line}",
    sitename="MyTestPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://fieldofnodes.github.io/MyTestPackage.jl",
        assets=String[],
        size_threshold = 1_000_000,
    ),
    pages=[
        "Home" => "index.md",
        "User Guide" => [
            "Getting Started" => "user/getting_started.md",
            "Features" => "user/features.md",
            "Examples" => "user/examples.md",
        ],
        "References" => 
            ["API" => "references/api.md"]
    ],
)

deploydocs(;
    repo="github.com/fieldofnodes/MyTestPackage.jl", 
    devbranch = "main",
    devurl="dev",
    target = "build",
    branch = "gh-pages",
    versions = ["stable" => "v^", "v#.#" ]
)
