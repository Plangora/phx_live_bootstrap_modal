defmodule LiveSite.Repo do
  use Ecto.Repo,
    otp_app: :live_site,
    adapter: Ecto.Adapters.Postgres
end
