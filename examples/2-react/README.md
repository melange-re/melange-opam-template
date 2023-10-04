# `2-react`

<br>

This project shows how to create a simple React app with Melange and
[ReasonReact](https://reasonml.github.io/reason-react/).

The app just renders a component with "Hello world".

<br>

To set up the environment to work with it, you will need to install
[opam](https://opam.ocaml.org/) and [Node.js](https://nodejs.org/).

## Get started

<pre><code><b>$ cd example/2-react</b>
<b>$ make init</b>
<b>$ make watch</b>
# in another tab
<b>$ make serve</b>
</code></pre>

Then open the browser to see the rendered app.

## Commands

You can see all available commands by running `make help` or just `make`. Here
are a few of the most useful ones:

- `make init`: set up opam local switch and download OCaml, Melange and
JavaScript dependencies
- `make install`: install OCaml, Melange and JavaScript dependencies
- `make watch`: watch for the filesystem and have Melange rebuild on every
change
- `make serve`: serve the application with a local HTTP server

