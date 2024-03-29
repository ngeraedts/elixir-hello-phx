defmodule HelloWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :hello

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phx.digest
  # when deploying your static files in production.
  plug Plug.Static,
    at: "/",
    from: :hello,
    gzip: false,
    only: ~w(css fonts images js favicon.ico robots.txt)

  plug HelloWeb.Router
end
