var fs = require('fs');
var path = require('path');

/*
 * Bootstraps all entry point modules in the ./app/assets folder
 */
var entryPointModuleList = fs.readdirSync('./app/assets/javascripts/entry');
var entryPointModules = {};

entryPointModuleList.forEach(function(entryFile) {
    entryPointModules[entryFile] = "./" + path.join('app/assets/javascripts/entry', entryFile);
});

/*
 * Example entry points
 * {
 *  'my-module': 'app/assets/javascripts/entry/my-module.js'
 *  'my-module2': 'app/assets/javascripts/entry/my-module2.js'
 * }
 */

module.exports = {
    cache: false,
    entry: entryPointModules,
    output: {
        path: "./public/js/",
        filename: '[name]',
    },
    module: {
        loaders: [
            // required for react jsx
            { test: /\.js$/, exclude: /node_modules/, loaders: ["jsx-loader", "babel-loader"] },
            { test: /\.jsx$/, exclude: /node_modules/, loader: "jsx-loader?insertPragma=React.DOM" },
        ]
    },
};
