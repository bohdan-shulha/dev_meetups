defmodule MeetupsWeb.PageController do
  use MeetupsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
