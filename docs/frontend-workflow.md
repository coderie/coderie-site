## Frontend Developer Workflow

### Install node
node is required to setup all of the frontend dev tools.
* node: Install from `https://nodejs.org/` 
* npm: Comes with node installation

*optional:* I would recommend installing nvm to manage your version of node: `https://github.com/creationix/nvm`

### Setup webpack and install modules
* Install webpack globally by running `npm install -g webpack`
* In the root directory run `npm install`

Now you should have all required dependencies after running these commands

### Adding new entry point apps
An entry point app is the top level application for the view or current route. Additionally more than one entry point app can exist on a page...

These apps should be added to the `./app/assets/javascripts/entry/your-entry.js` folder.

Webpack will compile your app into `./public/js/your-entry.js`. 

This file will need to be added to the view via `<script src="/public/js/your-entry.js"></script>`

### Adding new react components
Components are the building blocks of the application & are required from the entry point app files.

A simple component structure can look like...

```
-app/assets/javascripts/components/
--todo/
---todo-container.js
---todo-list.js
---todo-item.js
```

### Building with webpack
Run `webpack --watch` to run an initial build of webpack and signal webpack to watch the entry point files.

### Loading files on demand with webpack
Webpack can work similar to AMD, allowing us to load javascript modules on demand vs bundling everything into a single file.

High level overview can be found here: http://webpack.github.io/docs/code-splitting.html

Todo: add more details and sample


###Testing
TODO: Add unit testing guidelines

### .scss workflow
TODO: Add .scss workflow guideline. If you know how to do it with the ruby tools, feel free to edit this section and enlighten us all.
