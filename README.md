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