#!/usr/bin/env nextflow

params.hello = "$baseDir/hello.txt"

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

println(params)

process sayHello {
  echo true
  input: 
    val x from cheers
  script:
    """
    echo '$x world!'
    """
}

