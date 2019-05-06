const webpack = require("webpack");
const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");

module.exports = {
    entry: {
        app: ["./src/web/App.js"],
        vendor: ["react", "react-dom"]
    },
    output: {
        path: path.resolve(__dirname, "dist"),
        filename: "js/[name].bundle.js"
    },
    resolve: {
        extensions: [".js", ".jsx", ".json", ".ts", ".tsx", ".wasm"]
    },
    module: {
        rules: [
            {
                test: /\.(jsx?|tsx?)$/,
                exclude: /node_modules/,
                loader: "babel-loader",
                options: {
                    presets: ["@babel/env"],
                    plugins: ["@babel/plugin-syntax-dynamic-import"]
                }
            },
            {
                test: /\.(png|jpg|gif)$/,
                use: [
                    {
                        loader: "babel-loader?cacheDirectory",
                        options: {
                            presets: ["@babel/env"],
                            plugins: ["@babel/plugin-syntax-dynamic-import"]
                        }
                    },
                    {
                        loader: "file-loader"
                    }
                ]
            }
        ]
    },
    devServer: {
        publicPath: "http://localhost:8080/dist/",
        contentBase: path.join(__dirname, "dist/"),
        hotOnly: true,
        port: 8080,
        compress: true
    },
    plugins: [
        new HtmlWebpackPlugin({
            template: path.resolve(__dirname, "src", "web", "index.html")
        }),
        new webpack.HotModuleReplacementPlugin()
    ]
};
