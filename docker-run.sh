docker run --user `id -u`:`id -g` --rm -v $(pwd):/work docbuild:1.0 "$@"
