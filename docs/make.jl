using OMOPDataSciencePipelines
using Documenter

DocMeta.setdocmeta!(OMOPDataSciencePipelines, :DocTestSetup, :(using OMOPDataSciencePipelines); recursive=true)

makedocs(;
    modules=[OMOPDataSciencePipelines],
    authors="Dilum Aluthge <dilum@aluthge.com> and contributors",
    repo="https://github.com/bcbi/OMOPDataSciencePipelines.jl/blob/{commit}{path}#{line}",
    sitename="OMOPDataSciencePipelines.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://bcbi.github.io/OMOPDataSciencePipelines.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
    strict=true,
)

deploydocs(;
    repo="github.com/bcbi/OMOPDataSciencePipelines.jl",
    devbranch="main",
)
