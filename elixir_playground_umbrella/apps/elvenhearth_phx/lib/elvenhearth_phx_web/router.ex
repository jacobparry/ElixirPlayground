defmodule ElvenhearthPhxWeb.Router do
  use ElvenhearthPhxWeb, :router

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

  scope "/" do
    pipe_through :api # Use the default browser stack

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      schema: ElvenhearthPhxWeb.Schema,
      interface: :playground
    )
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElvenhearthPhxWeb do
  #   pipe_through :api
  # end
end
