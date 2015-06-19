module.exports = {
    cache: false,
    entry: "./path/to/app(s).js",//TODO add app paths
    output: {
        path: "./public/js/",//TODO assign correct public folder for js files
        filename: 'bundle.js',
    },
    module: {
        loaders: [
            // required for react jsx
            { test: /\.js$/, exclude: /node_modules/, loaders: ["jsx-loader", "babel-loader"] },
            { test: /\.jsx$/, exclude: /node_modules/, loader: "jsx-loader?insertPragma=React.DOM" },
        ]
    },
};
