
params.outdir = 's3://nf-encrypted/chunks'

process foo {

    publishDir "${params.outdir}"

    output:
    file 'chunk_*' into letters

    '''
    printf 'Hola' | split -b 1 - chunk_
    '''
}
