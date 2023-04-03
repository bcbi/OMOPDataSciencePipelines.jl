# OMOPDataSciencePipelines

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://bcbi.github.io/OMOPDataSciencePipelines.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://bcbi.github.io/OMOPDataSciencePipelines.jl/dev)
[![Build Status](https://github.com/bcbi/OMOPDataSciencePipelines.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/bcbi/OMOPDataSciencePipelines.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/bcbi/OMOPDataSciencePipelines.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/bcbi/OMOPDataSciencePipelines.jl)
OMOPDataSciencePipelines.jl is a Julia package that provides a set of functions designed to facilitate research analysis using the OMOP Common Data Model in the form of flat files. The package includes functions for loading and preprocessing data from various OMOP tables, such as Observation, Condition, Visit_occurrence, and Measurement.

To get started, simply load your OMOP data files into Julia and use the provided functions to manipulate and analyze the data. The package also includes functions for generating visualizations and summaries of your data.

In particular, the Person table is important for understanding the demographic characteristics of the individuals in your dataset. By loading all the relevant case files and the Person table, you can perform a wide range of analyses on the data, such as studying the incidence and prevalence of various conditions, evaluating treatment effectiveness, and more.
