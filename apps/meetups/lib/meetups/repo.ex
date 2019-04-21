defmodule Meetups.Repo do
  use Ecto.Repo,
    otp_app: :meetups,
    adapter: Ecto.Adapters.MySQL
end
