#!/usr/bin/env cwl-runner
# This tool description was generated automatically by argparse2tool ver. 0.4.3-2
# To generate again: $ ./write_results.py -b ./write_results.py -go --generate_cwl_tool
# Help: $ ./write_results.py  --help_arg2cwl

cwlVersion: v1.0

class: CommandLineTool
baseCommand: ['./write_results.py']

doc: |
  Write JSON files describing trees

inputs:
  
  include_ssm_names:
    type: ["null", boolean]
    default: False
    doc: Include SSM names in output (which may be sensitive data)
    inputBinding:
      prefix: --include-ssm-names 

  min_ssms:
    type: ["null", float]
    default: 0.01
    doc: Minimum number or percent of SSMs to retain a subclone
    inputBinding:
      prefix: --min-ssms 

  dataset_name:
    type: string
  
    doc: Name identifying dataset
    inputBinding:
      position: 1

  tree_file:
    type: string
  
    doc: File containing sampled trees
    inputBinding:
      position: 2

  tree_summary_output:
    type: string
  
    doc: Output file for JSON-formatted tree summaries
    inputBinding:
      position: 3

  mutlist_output:
    type: string
  
    doc: Output file for JSON-formatted list of mutations
    inputBinding:
      position: 4

  mutass_output:
    type: string
  
    doc: Output file for JSON-formatted list of SSMs and CNVs assigned to each subclone
    inputBinding:
      position: 5


outputs:

  tree_summary_output_out:
    type: File
  
    doc: Output file for JSON-formatted tree summaries
    outputBinding:
      glob: $(inputs.tree_summary_output.path)

  mutlist_output_out:
    type: File
  
    doc: Output file for JSON-formatted list of mutations
    outputBinding:
      glob: $(inputs.mutlist_output.path)

  mutass_output_out:
    type: File
  
    doc: Output file for JSON-formatted list of SSMs and CNVs assigned to each subclone
    outputBinding:
      glob: $(inputs.mutass_output.path)

