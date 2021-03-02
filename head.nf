#!/usr/bin/env nextflow

params.path = "/dev/urandom"
params.size = "250M"


process HeadFile {
  echo true
  input: 
    path path from params.path
    val size from params.size
    
  script:
    """
    time (head -c ${size} ${path} > /dev/null) 2>&1 
    """
}

