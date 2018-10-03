# ElixirPlayground
A sandbox for learning Elixir and its environment

# Step 1 - Create an Umbrella Application
1. mix new elixir_playground_umbrella --umbrella
  * Similar to .NET Solution
  * Used for delineating logic or separating distict services

# Step 2 - Create Data Logic Application
1. mix new elvenhearth --sup
  * A --sup option can be given to generate an OTP application skeleton including a supervision tree. Normally an app is generated without a supervisor and without the app callback.

# Step 3 - Create Phoenix Web Application
1. mix phx.new elvenhearth_phx --no-ecto
  * The --no-ecto tells phoenix not to include the ecto wrapper or any of the files needed to interact with ecto.

# Step 4 - Add Ecto and Postgres
  * Add the ecto and postrex dependecies from hex.pm to logic app.
  * Add config blocks in config.exs
  * Add the repo file.
  ** use Ecto.Repo, otp_app: :elvenhearth
  * Add postgrex and ect0 to elvenhearth mix.exs applications
  * Add child worker for the repo.
  ** worker(Elvenhearth.Repo, [])
  * run mix ecto
  ** mix ecto.create
  * Open database (psql -d <db>), \dt

# Step 4 - Create Ecto Models
  * Model
  * Create User model
  ** use Ecto.schema
  ** schema "users" do
  * Create user migration
  * mix ecto.gen.migration add_users_table from logic app
  * Run migration
  * Migration table in psql
  * Make some queries
  * Run them in iex. iex -S mix
  * Changesets

  * Seeds

# Step 5 - Absinthe Boilerplate
 * Add the dependencies to the web application
      {:absinthe, "~> 1.4"},
      {:absinthe_plug, "~> 1.4"},
      {:absinthe_phoenix, "~> 1.4"},
      {:absinthe_relay, "~> 1.4"},
 * Add supervisor to Web Application
      supervisor(Absinthe.Subscription, [ElvenhearthPhxWeb.Endpoint])
 * Add reference to user_socket
    use Absinthe.Phoenix.Socket,
    schema: ElvenhearthPhxWeb.Schema
 * Add route in the router.ex
      scope "/" do
        pipe_through :api

        forward("/graphiql", Absinthe.Plug.GraphiQL,
          schema: ElvenhearthPhxWeb.Schema,
          interface: :playground
        )
      end
 * Create a schema.ex file (in web app)
 * List of users
    user object in schema
    list of users
    list_user_method
    not null fields

# Step 6 - Resolvers
  * Create User and Character Resolvers
  ** Talk about the /3 arity (first field is root object)
  * Abstract the objects and fields
