# Bookaroo

## Intro

Welcome to Bookaroo, the latest and greatest app from Howdy Partners&trade;

This is your go-to place to keep in touch with all your cowboy friends out on the range.

Simply sign up for an account and get posting!

### Homepage

The homepage is a simple welcome screen for new users. There is a large call to action in the center of the page to encourage new users to get started.

### Newsfeed

This is the main page for the web app. Here is where logged in users can post new content and write comments on other peoples posts.

## Sign up

New users must sign up to access most areas of the application. All that is needed is a username and password

# App startup

## Database setup commands

When using the app for the first time the databases will need configuring. The simplist command to run is:

```
bin/rails db:schema:load
```

If you have added a new migration and want to update the schema, run:

```
bin/rails db:migrate
```

if migrations are not working or a table you just added needs completely changing, run

```
rails db:reset -> drops and recreates all databases found in config/database.yml

db:schema:load -> uses the schema found in db/schema.rb to repopulate all tables in the database from a single source
```

For all the above commands, the default environment is `development`. If you want to update the `test` or `production` environments then add `RAILS_ENV=<env_name>` after the command.

To start the app up, simply run

```
bin/rails server
```

add `-p <port>` to specify a port. The default is 3000
