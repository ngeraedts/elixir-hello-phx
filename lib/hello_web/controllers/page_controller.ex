defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  require Logger

  def index(conn, _params) do
    send_resp(conn, 200, "index")
  end

  def show(conn, %{"person" => person}) do
    send_resp(conn, 200, "hello #{person}")
  end

  def new(conn, %{"person" => person, "action" => action}) do
    send_resp(conn, 200, "#{action} at #{person}")
  end

  def new(conn, _params) do
    send_resp(conn, 200, "new unmatched")
  end
end
