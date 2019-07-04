defmodule HelloWeb.PageControllerTest do
  use HelloWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert response(conn, 200) =~ "index"
  end

  test "GET /:person", %{conn: conn} do
    conn = get(conn, "/john.smith")
    assert response(conn, 200) =~ "hello john.smith"
  end

  test "POST /:person/:action", %{conn: conn} do
    conn =post(conn, "/john.smith/wave")

    assert response(conn, 200) =~ "wave at john.smith"
  end

  test "POST /:person/:action, x-www-form-urlencoded", %{conn: conn} do
    conn =
      conn
      |> put_req_header("content-type", "application/x-www-form-urlencoded")
      |> post("/john.smith/wave")

    assert response(conn, 200) =~ "wave at john.smith"
  end
end
