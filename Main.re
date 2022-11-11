open Reason_react

module App = {
  // This sample forces an import of Belt.*, so that CI builds can ensure that
  // Melange has been installed correctly for JS bundlers to be able to find it.
  let make = () =>
    ["Hello " ++ My_lib2.person, "Your age is " ++ string_of_int(My_lib2.age)]
    ->Belt.List.map(greeting => ReactDOMRe.createDOMElementVariadic(
      "h1",
      [|
        {
          React.string(greeting);
        },
      |],
    ))
    ->Belt.List.toArray
    ->React.array;
};

ReactDOM.querySelector("#root")
->(
    fun
    | Some(root) => ReactDOM.render(App.make(), root)
    | None =>
      Js.Console.error(
        "Failed to start React: couldn't find the #root element",
      )
  );
