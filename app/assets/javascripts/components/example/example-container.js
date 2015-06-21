/**
 * @jsx React.DOM
 */

var React = require('react');

//React components
var ExampleItem = require('./example-item');

var ExampleContainer = React.createClass({

    render: function() {
        return (
            <div>
                <h1>Example Container</h1>
                <Example />
            </div>
        );
    }

});

module.exports = ExampleContainer;
