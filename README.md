# How to bootstrap the application

## Installation
- Have either rvm or rbenv installed
- Install Ruby 2.1.x or 2.2.x
- `brew install postgresql` or download `Postgres.app` - Install Postgres, needed for bundling
- `git clone https://github.com/coderie/coderie-site.git` - Copy the repository down locally
- `bundle install` - Bundles up all dependencies, this may take a while
- `bundle exec rake db:setup` - Setup the database
- `bundle exec rake db:seed` - Seed with starter data
- `bundle exec rails s` - Serve the application
- `bundle exec rake db:reset` - If you want to reset and re-seed your db
