
task python_evolve {
    Int? write_backups_every
    Int? write_state_every
    Int? burnin_samples
    Int? mcmc_samples
    Int? mh_iterations
    Int? random_seed
    String? params_file
    File ssm_file
    File cnv_file

    command {
        python /evolve.py \
        ${ssm_file} \
        ${cnv_file} \
        --write-backups-every ${default="100" write_backups_every} \
        --write-state-every ${default="10"  write_state_every} \
        --burnin-samples ${default="1000" burnin_samples} \
        --mcmc-samples ${default="2500" mcmc_samples} \
        --mh-iterations ${default="5000" mh_iterations} \
        ${"--random-seed " + random_seed} \
        ${"--params " + params_file}
    }

    output {
#seems optional        File clonal_frequencies = "clonaFrequencies"
        File mcmc_samples_output = "mcmc_samples.txt"
        File random_seed_output = "random_seed.txt"
        File top_k_trees = "top_k_trees"
        File trees = "trees.zip"
    }

    runtime {
        docker: 'quay.io/dockstore/phylowgs:master'
    }
}

workflow phylowgs {
  call python_evolve
}
