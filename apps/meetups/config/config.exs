# Since configuration is shared in umbrella projects, this file
# should only configure the :meetups application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :meetups,
  ecto_repos: [Meetups.Repo]

import_config "#{Mix.env()}.exs"
