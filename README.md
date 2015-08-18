![ScreenShot](app/assets/images/brand/coderie-main.png)
# How to bootstrap the application



## Installation
- Have either rvm or rbenv installed
- Install Ruby 2.1.x or 2.2.x
- `brew install postgresql` or download `Postgres.app` - Install Postgres, needed for bundling
- `git clone https://github.com/coderie/coderie-site.git` - Copy the repository down locally
- `gem install bundler` - Installs [Bundler](http://bundler.io/)
- `bundle install` - Bundles up all dependencies, this may take a while
- `bundle exec rake db:setup` - Setup the database
- `bundle exec rake db:seed` - Seed with starter data
- `bundle exec rails s` - Serve the application
- `bundle exec rake db:reset` - If you want to reset and re-seed your db

## Docker Installation
### Requirements
- [boot2docker installed](http://boot2docker.io/)
- [docker-compose installed](http://docs.docker.com/compose/install/)

### Install Steps
- `docker-compose build`
- `docker-compose up`
- `docker-compose run web rake db:create`
- `docker-compose run web rake db:migrate`
- `docker-compose run web rake`

#### Working with Rails
Rails is now inside of the container so commands will look like:

```shell
docker-compose run web rails generate scaffold post
```

#### Bundled Dependencies
Dependencies are also built into the container. This means that the container
could ship off to production (doesn't have to) in it's state and have the exact
dependencies shipped with it. This creates a bit more work though.  Instead of
just `bundle install` after gem changes, you will need to run the following:

```shell
docker-compose build
```

## Additional Docs
* [Contributing Guidelines](/docs/contributing.md)
* [Frontend developer workflow](/docs/frontend-workflow.md)
