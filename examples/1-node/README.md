# `1-node`

<br>

This project shows how to create a simple Node.js app with Melange. When
executed, it will print "Hello world!!" on the console.

The code in [src/hello.ml](./src/hello.ml) is:

```ocaml
let () = Js.log ("Hello " ^ World.name ^ "!!")
```

<br>

To set up the environment to work with it, you will need to install
[opam](https://opam.ocaml.org/) and [Node.js](https://nodejs.org/).

After that, run these commands to build the project:

<pre><code><b>$ cd example/1-node</b>
<b>$ make init</b>
<b>$ make build</b>
<b>$ node src/dist/src/hello.js</b>
Hello world!!
</code></pre>
