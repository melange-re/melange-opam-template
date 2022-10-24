# melange-opam-template

A simple project template using [Melange](https://github.com/melange-re/melange)
with [opam](https://opam.ocaml.org/).

If you are looking for a template with esy, check [melange-esy-template](https://github.com/melange-re/melange-esy-template).

## Quick Start

```shell
make init

# In separate terminals:
make watch
make serve
```

### React

React support is provided by
[`@rescript/react`](https://github.com/rescript-lang/rescript-react). The entry
point of the sample React app is [`src/ReactApp.re`](src/ReactApp.re).

## Commands

You can see all available commands by running `make help` or just `make`. Here
are a few of the most useful ones:

- `make init`: set up opam local switch and download OCaml, Melange and
JavaScript dependencies
- `make install`: install OCaml, Melange and JavaScript dependencies
- `make watch`: watch for the filesystem and have Melange rebuild on every
change
- `make serve`: serve the application with a local HTTP server

## JavaScript output

Since Melange just compiles source files into JavaScript files, it can be used
for projects on any JavaScript platform - not just the browser.

All ReasonML/OCaml/ReScript source files under `src/` will be compiled to
JavaScript and written to `_build/default/src/*` (along with some other build
artifacts).

For example, [`src/Hello.ml`](src/Hello.ml) (using OCaml syntax) and
[`src/Main.re`](src/Main.re) (using ReasonML syntax) can each be run with
`node`:

```bash
node _build/default/src/Hello.bs.js
node _build/default/src/Main.bs.js
```
