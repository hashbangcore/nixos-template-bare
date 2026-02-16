set unstable := true
set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

default: run

build:
    nixos-rebuild build-vm --flake .#system

run:
    ./result/bin/run-*-vm

reset:
    rm ./minimal.qcow2 result

clean:
    rm minimal.qcow2

commit hint="":
    netero commit -c ./docs/convention.txt "{{ hint }}" | git commit --edit -F -

fmt:
    alejandra .
    just --fmt
