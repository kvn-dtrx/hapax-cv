# ---
# title: justfile for hapax-cv
# ---
# ---

set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

build-dir := "build"

# Shows available recipes
default:
    @just --list --unsorted

# Prepares build directory
prepare:
    mkdir -p {{ build-dir }}

# Compiles all examples/<slug>/main.tex into build/<slug>.pdf
compile: prepare
    bin/compile-examples.sh

# Alias for compile
build: compile

# Removes intermediate files; keeps pdf/png/tex
clean:
    find {{ build-dir }} -mindepth 1 \
        ! \( -iname "*.pdf" -o -iname "*.png" -o -iname "*.tex" -o -iname ".gitkeep" \) \
        -delete

# Wipes build directory except .gitkeep
reset: prepare
    find {{ build-dir }} -mindepth 1 ! -iname ".gitkeep" -delete

# Resets and rebuilds examples
rebuild: reset build
