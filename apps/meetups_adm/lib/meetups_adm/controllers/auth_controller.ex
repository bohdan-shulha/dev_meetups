defmodule MeetupsAdm.AuthController do
  use MeetupsAdm, :controller

  def login(conn, _params) do
    render(conn, "login.html")
  end
end
