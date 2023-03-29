module OMOPDataSciencePipelines

export main

using ConfParser
using CSV
using Dates
using DataFrames
using MLJ
using Plots
using PreprocessMD
using Random

function main()


	# Read in DataFrames from files
	conf = ConfParse("./config.ini")
	parse_conf!(conf)
	IN_DIR = retrieve(conf, "local", "input_directory")
	OUT_DIR = retrieve(conf, "local", "output_directory")

	directory_errors_found(IN_DIR)
	directory_errors_found(OUT_DIR)

	Person = CSV.File(joinpath(IN_DIR, "person.csv"), header = 1) |> DataFrame;

	# Summaries

	#TODO: make sure file is writeable
	open("Example/Output/out.txt", "w") do OUT
		println(OUT, top_n_values(Person, :race_concept_id, 20))
		println(OUT, top_n_values(Person, :gender_concept_id, 20))
		println(OUT, Dates.format(now(), "Y-m-d H:M:S"))
	end

end

function directory_errors_found(dir)
	if(isempty(dir))
		@error "No directory given"
		return true
	elseif(!isdir(dir))
		@error "Directory $dir does not exist"
		return true
	end

	return false
end

end #module OMOPDataSciencePipelines
