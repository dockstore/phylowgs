#!/usr/bin/env cwl-runner
# This tool description was initially generated by argparse2tool ver. 0.4.3-2


cwlVersion: v1.0

class: CommandLineTool
baseCommand: ['./evolve.py']

dct:creator:
  foaf:name: Quaid Morris 

dct:contributor:
  foaf:name: Jeff Wintersinger 

dct:contributor:
  foaf:name: Denis Yuen
  foaf:mbox: mailto:denis.yuen@oicr.on.ca


doc: |
  Run PhyloWGS to infer subclonal composition from SSMs and CNVs

inputs:
  
  write_backups_every:
    type: ["null", int]
    default: 100
    doc: Number of iterations to go between writing backups of program state
    inputBinding:
      prefix: --write-backups-every 

  write_state_every:
    type: ["null", int]
    default: 10
    doc: Number of iterations between writing program state to disk. Higher values reduce IO burden at the cost of losing progress made if program is interrupted.
    inputBinding:
      prefix: --write-state-every 

  top_k_trees:
    type: ["null", string]
    default: top_k_trees
    doc: Output file to save top-k trees in text format
    inputBinding:
      prefix: --top-k-trees 

  clonal_freqs:
    type: ["null", string]
    default: clonalFrequencies
    doc: Output file to save clonal frequencies
    inputBinding:
      prefix: --clonal-freqs 

  burnin_samples:
    type: ["null", int]
    default: 1000
    doc: Number of burnin samples
    inputBinding:
      prefix: --burnin-samples 

  mcmc_samples:
    type: ["null", int]
    default: 2500
    doc: Number of MCMC samples
    inputBinding:
      prefix: --mcmc-samples 

  mh_iterations:
    type: ["null", int]
    default: 5000
    doc: Number of Metropolis-Hastings iterations
    inputBinding:
      prefix: --mh-iterations 

  random_seed:
    type: ["null", int]
    doc: Random seed for initializing MCMC sampler
    inputBinding:
      prefix: --random-seed 

  tmp_dir:
    type: ["null", string]
    doc: Path to directory for temporary files
    inputBinding:
      prefix: --tmp-dir 

  params_file:
    type: ["null", string]
    doc: JSON file listing run parameters, generated by the parser
    inputBinding:
      prefix: --params 

  ssm_file:
    type: string
  
    doc: File listing SSMs (simple somatic mutations, i.e., single nucleotide variants. For proper format, see README.md.
    inputBinding:
      position: 1

  cnv_file:
    type: string
  
    doc: File listing CNVs (copy number variations). For proper format, see README.md.
    inputBinding:
      position: 2


outputs:

  clonal_frequencies:
    type: File 
    doc: <Fill me in> 
    outputBinding: clonalFrequencies
    format: "http://edamontology.org/format_3752"

  mcmc_samples:
    type: File 
    doc: <Fill me in> 
    outputBinding: mcmc_samples.txt 
    format: "http://edamontology.org/format_3475"

  random_seed:
    type: File 
    doc: <Fill me in> 
    outputBinding: random_seed.txt 

  top_k_trees:
    type: File 
    doc: <Fill me in> 
    outputBinding: top_k_trees

  top_k_trees:
    type: File 
    doc: <Fill me in> 
    outputBinding: top_k_trees
