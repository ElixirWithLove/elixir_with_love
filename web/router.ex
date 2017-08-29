defmodule ElixirWithLove.Router do
  use ElixirWithLove.Web, :router

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

  scope "/", ElixirWithLove do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/conduct", PageController, :conduct
    get "/about", PageController, :about
    get "/sponsors", PageController, :sponsors
    get "/sponsorships", PageController, :sponsorships
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElixirWithLove do
  #   pipe_through :api
  # end
end
