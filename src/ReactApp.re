module App = {
  // This sample forces an import of Belt.*, so that CI builds can ensure that
  // Melange has been installed correctly for JS bundlers to be able to find it.
  [@react.component]
  let make = () =>
    ["Hello " ++ World.name ++ "!", "This is React!"]
    ->Belt.List.map(greeting => <h1 key={greeting}> greeting->React.string </h1>)
    ->Belt.List.toArray
    ->React.array;
};

switch (ReactDOM.querySelector("#root")) {
| Some(element) =>
  let root = ReactDOM.Client.createRoot(element);
  ReactDOM.Client.render(root, <App />);
| None =>
  Js.Console.error("Failed to start React: couldn't find the #root element")
};
