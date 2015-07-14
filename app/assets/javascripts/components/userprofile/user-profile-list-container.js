var React = require('react');

var UserProfileListContainer = React.createClass({
  render: function(){
    return(
    var profiles = this.state.userProfiles.map(function(profile)){
      return (
        <div key={profile.name}>{profile.name}</div>
      );
    });
    return (
      <div>{profiles}</div>
    );
    );
  },

  getInitialState: function(){
  var userProfileData = document.getElementById('user-profile-list-container').dataset.userProfiles
  },
  return {userProfiles: userProfileData}


});

//This component will handle getting the data and distributing it to the rest of our components. We want to hydrate the data the server has dehydrated to the dom.