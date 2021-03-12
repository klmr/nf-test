
process foo {

    publishDir 's3://nf-encrypted/chunks'

    output:
    file 'chunk_*' into letters

    '''
    printf 'Hola' | split -b 1 - chunk_
    '''
}
