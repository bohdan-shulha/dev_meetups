defmodule MeetupsWeb.PageController do
  use MeetupsWeb, :controller

  plug :put_layout, false

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
