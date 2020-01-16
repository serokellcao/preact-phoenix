use Mix.Config

# Configure your database
config :detect, Detect.Repo,
  username: "phoenix",
  password: "hellotwitch228",
  database: "detect_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :detect, DetectWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
