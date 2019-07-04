defmodule HelloWeb.Router do
  use HelloWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug Plug.Parsers, parsers: [:multipart], pass: ["*/*"]
  end

  scope "/", HelloWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/:person", PageController, :show
    post "/:person/:action", PageController, :new
  end
end
