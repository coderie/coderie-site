/**
 * @jsx React.DOM
 */

var React = require('react');

var TerminalPrompt = React.createClass({

  render: function() {
    return (
        <input type="email" className="terminal-cmd-input required email" onChange={this.props.update} />
    );
  }

});

module.exports = TerminalPrompt;

