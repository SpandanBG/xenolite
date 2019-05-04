import React from "react";
import ReactDom from "react-dom";

import("xenolite").then(xenolite => {
    const Home = () => <div>{xenolite.greet("world")}</div>

    ReactDom.render(<Home />, document.getElementById("root"));
})
