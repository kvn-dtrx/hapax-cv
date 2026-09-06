#!/usr/bin/env sh

# ---
# description: >-
#   Compiles each LaTeX package example into build/<slug>.pdf
# ---

# ---

set -o errexit
set -o nounset

script_dir="$(CDPATH='' cd -- "$(dirname "${0}")" && pwd -P)"
repo_dir="$(CDPATH='' cd -- "${script_dir}/.." && pwd -P)"
examples_dir="${repo_dir}/examples"
build_dir="${repo_dir}/build"

mkdir -p "${build_dir}"

found=0
for main in "${examples_dir}"/*/main.tex; do
    [ -f "${main}" ] || continue
    found=1
    example_dir="$(dirname "${main}")"
    slug="$(basename "${example_dir}")"
    (
        cd "${example_dir}"
        latexmk \
            -silent \
            -r "${repo_dir}/.latexmkrc" \
            -jobname="${slug}" \
            main.tex
    )
done

if [ "${found}" -eq 0 ]; then
    printf 'No examples found below %s\n' "${examples_dir}" >&2
    exit 1
fi
