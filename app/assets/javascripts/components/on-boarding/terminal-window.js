/**
 * @jsx React.DOM
 */

var React = require('react');

//React components
var TerminalPrompt = require('./terminal-prompt');

var TerminalWindow = React.createClass({
  getInitialState: function(){
    return{
      message: "Enter your email address to sign up."
    }
  },
  handleKeyDown: function(e){
    //Setup listener for key events in order
    //to preceed the text with blinking cursor
    switch (e.keyCode) {
      case 8:  // Backspace
        console.log('backspace');
        break;
      case 9:  // Tab
      case 13: // Enter
      case 37: // Left
      case 38: // Up
      case 39: // Right
      case 40: // Down
        break;
      default:
        this.moveCursor();
    }
  },
  update: function(e){
    //TODO: Need real live validation here for emails
    if(e.target.value === 'ed@htmelvis.com'){
      var terminalMessage = "What's up Ed!";
    } else{
      var terminalMessage = "Ooopss you seem to have not typed in an email address";
    }
    this.setState({
      message: terminalMessage
    })
  },
  propTypes: {
    update: React.PropTypes.func.isRequired
  },
  render: function() {
    return (
        <div>
          <form action="">
            <label for="" aria-hidden="true">
              <span className="invisible">Email Address:</span>
              <span className="arrow-cursor">></span>
              <span className="blinking-cursor"></span>
            </label>
            <TerminalPrompt update={this.update} />
            <p>{this.state.message}</p>
          </form>
        </div>
    );
  }
});

module.exports = TerminalWindow;
