# Recippy
Recipe management app

## Install and setup
Copy the file `config/dev.secret.exs.sample` to `config/dev.secret.exs` and fill any values desired other than the defaults.  

## DB configuration
Install postgres. Run the following as the postgres user, using desired values.
```sql
# psql
CREATE DATABASE recippy_dev;
CREATE DATABASE recippy_test;
CREATE USER recippy WITH PASSWORD 'hacking-nasa123';
ALTER DATABASE recippy_dev OWNER TO recippy;
ALTER DATABASE recippy_test OWNER TO recippy;
GRANT ALL PRIVILEGES ON DATABASE recippy_dev TO recippy;
GRANT ALL PRIVILEGES ON DATABASE recippy_test TO recippy;
```

## Running
To start the app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix  
Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).
