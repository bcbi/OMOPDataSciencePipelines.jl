using Pkg

Pkg.activate("./Project.toml")

include("src/InformaticsPipeline.jl")
using .InformaticsPipeline

main()

