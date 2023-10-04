# Contributing an example

## Creating a new folder under `examples`

To start working on your example, create a new folder under `examples` with the
next number in the sequence + identifying name, e.g. `8-tailwind`.

Each example should be self-contained, meaning users should be able to copy the
folder and have everything needed to start working.

So all examples should contain at least these files:
- `.gitignore`
- opam file
- `Makefile`
- `README.md`
- `dune-project` and `dune`

If the example uses JavaScript packages, include `package.json` as well (plus
lockfile).

The best approach is probably to take one of the existing examples folders, copy
it, and proceed from there.

## Working with dune monorepo

The `melange-examples` project is configured as monorepo. This is done by
including a `dune-project` at the top level, so that running `dune build` at the
top will build all examples, generate all opams, etc. However, this might be
problematic when working on a specific example, because the `_build` folder will
be placed at the top folder, rather than inside the example folder.

If you want to emulate how a user would work in your example, just rename the
top level [dune-project](./dune-project) to `_dune-project` temporarily, then
run any `dune build` or other commands inside your example folder. With this
configuration, Dune will set the root to the example folder (more info in the
Dune ["Finding the
root"](https://dune.readthedocs.io/en/latest/usage.html#finding-the-root) docs).

Once you are done, remember to rename back the file or not commit it.

## Adding tests

It is recommended to include some tests for your example. See some inspiration
in the `1-node` example [dune file](./1-node/src/dune), which includes a rule
with alias `runtest`.

## Updating `melange-examples.opam` and `Makefile`

When adding an example, remember to:

- add it to the main `melange-examples.opam`
- add it to the main `Makefile`'s `install` and `build` commands

so that it gets built and tested in CI.
