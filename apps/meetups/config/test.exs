# Since configuration is shared in umbrella projects, this file
# should only configure the :meetups application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :meetups, Meetups.Repo,
  username: "root",
  password: "",
  database: "meetups_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
