/**
 * @jsx React.DOM
 */
var React = require('react');

var TerminalWindow = require('../components/on-boarding/terminal-window.js');
var terminalPromptArea = document.getElementById('sign-up-form');

React.render(<TerminalWindow />, terminalPromptArea);
