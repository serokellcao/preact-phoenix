# preact-phoenix
PWA example application

## Before development use, create database and Phoenix user

```
$ mkdir /tmp/pg
$ initdb -D pgdata
$ echo 'pgdata/' >> .gitignore
$ psql -h 127.0.0.1 -d postgres
postgres=# create role phoenix with password 'otpserokell228';
postgres=# alter role phoenix with login;
postgres=# alter role phoenix createdb;
$ pg_ctl -D pgdata -l pgdata/log start ; sleep 1
$ mix ecto.create
```

## What does the mix say

# Detect

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Generated files

detect/lib/
├── detect
│   ├── application.ex
│   └── repo.ex
├── detect.ex
├── detect_web
│   ├── channels
│   │   └── user_socket.ex
│   ├── controllers
│   │   └── page_controller.ex
│   ├── endpoint.ex
│   ├── gettext.ex
│   ├── router.ex
│   ├── templates
│   │   ├── layout
│   │   │   └── app.html.eex
│   │   └── page
│   │       └── index.html.eex
│   └── views
│       ├── error_helpers.ex
│       ├── error_view.ex
│       ├── layout_view.ex
│       └── page_view.ex
└── detect_web.ex

8 directories, 15 files
