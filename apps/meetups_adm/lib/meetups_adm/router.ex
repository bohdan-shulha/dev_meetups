defmodule MeetupsAdm.Router do
  use MeetupsAdm, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MeetupsAdm do
    pipe_through :browser

    get "/", AuthController, :login
  end

  # Other scopes may use custom stacks.
  # scope "/api", MeetupsAdm do
  #   pipe_through :api
  # end
end
