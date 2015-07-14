## Add initial profile view

Please have [http://facebook.github.io/react/docs/getting-started.html](http://facebook.github.io/react/docs/getting-started.html) open as a reference to the api. It is the best way to learn.

###Steps
1. Setup dom element for app & dehydrate data for react to consumer from server side.
2. Setup entry point app.
3. Setup initial component & hydrate data.
4. Build out the rest of the components to your liking.


##Step 1
* Open up `/app/views/profiles/index.html.haml`
* Blow away lines 5-9 of machuga code (bwa ha ha)
* Add `#user-profile-list-container{: 'data-user-profiles’ => profile.to_json}` to line 5

What this will do is dehydrate the data from the server to the dom, which we will user later in our component.

##Step 2
* Add `user-profile-list-entry.js` to  `/assets/javascript/entry/`
* In the entry point file, require react as well as the `user-profile-list-container` we are going to make in step 3.
* Tell react to render <UserProfileListContainer /> to a dom element with the id of `#user-profile-list-container`

*Reference `/assets/javascript/entry/example-entry.js` for an example of requiring and naming conventions*


##Step 3
* Add `userprofile/user-profile-list-container.js` to `/assets/javascript/components`
* Create initial React component `var UserProfileListContainer`

*Reference `/assets/javascript/components/example/example-container.js` for an example of exporting components and naming conventions*

This component will handle getting the data and distributing it to the rest of our components. We want to hydrate the data the server has dehydrated to the dom.

* Add `getInitialState` method to your component.
* In `getInitialState`, store `document.getElementById('user-profile-list-container).dataset.userProfiles` in a variable called `userProfileData`. This method should return `{userProfiles: userProfileData}`. see [getInitialState api](https://facebook.github.io/react/docs/component-specs.html#getinitialstate)
* In the `render` method of the component add the following code sample inside your render method to see how we are accessing the data.
```
var profiles = this.state.userProfiles.map(function(profile)){
  return (
      <div key={profile.name}>{profile.name}</div>
    );
});
 return (
   <div>{profiles}</div>
   );
```

##TODOS:

* Further componentize the application by creating components for each profile in the profiles list and abstracting code.
