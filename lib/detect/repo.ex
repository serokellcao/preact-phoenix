defmodule Detect.Repo do
  use Ecto.Repo,
    otp_app: :detect,
    adapter: Ecto.Adapters.Postgres
end
