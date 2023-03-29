using Pkg

Pkg.activate("./Project.toml")

include("src/OMOPDataSciencePipelines.jl")
using .OMOPDataSciencePipelines

main()

